class Libkrun < Formula
  desc "Dynamic library providing HVF/KVM-based process isolation (PVH + virtio-fs fork)"
  homepage "https://github.com/tsirysndr/libkrun"
  version "1.19.7-pvh"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
    regex(/^v?(\d+(?:\.\d+)+-pvh\d*)$/i)
  end

  on_macos do
    url "https://github.com/tsirysndr/libkrun/releases/download/v1.19.7-pvh/libkrun-v1.19.7-pvh-aarch64-apple-darwin.tar.gz"
    sha256 "4f85b812b6f1e80f65b1999a02e3659376a8ad23130809487c91296a1b9bf1b2"

    # Only an arm64 macOS tarball is published; the release workflow builds on
    # macos-latest (Apple silicon). libkrun dlopens libkrunfw.5.dylib at runtime
    # to get the guest kernel — that is not in the dylib's load commands, so
    # Homebrew cannot infer it.
    depends_on arch: :arm64
    depends_on "libkrun/krun/libkrunfw"
  end

  on_linux do
    # Note the different asset naming scheme ("libkrun-pvh-v...") on Linux.
    url "https://github.com/tsirysndr/libkrun/releases/download/v1.19.7-pvh/libkrun-pvh-v1.19.7-pvh-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5a264345bef1c82b62a2e01dbb217028a3e153be03167a6d25b69d464499194c"

    depends_on arch: :x86_64
    # No libkrunfw dependency here: the libkrun/krun tap's libkrunfw formula is
    # arm64-macOS-only and upstream publishes no prebuilt x86_64. The .so still
    # dlopens libkrunfw.so.5 at runtime; it must come from the distro (see caveats).
  end

  conflicts_with "libkrun/krun/libkrun",
                 because: "both install the libkrun library and headers"

  def install
    if OS.mac?
      # The tarball already has the final layout: include/, lib/ (with the
      # libkrun.dylib -> libkrun.1.dylib -> libkrun.N.N.N.dylib symlink chain)
      # and lib/pkgconfig/.
      prefix.install "include", "lib"
      real_dylib = lib.glob("libkrun.[0-9]*.dylib")
                      .reject(&:symlink?)
                      .first
      odie "no libkrun dylib in the tarball" if real_dylib.nil?
      # The release is built with PREFIX=/usr/local, which leaves two absolute
      # paths pointing outside this keg.
      # 1. The dylib id. Upstream ships a bare `libkrun.1.dylib`, so anything
      #    linked against it records a relative name that dyld then looks for in
      #    the default search paths — which do not include the Homebrew prefix.
      #    Point it at the keg so consumers get an absolute path, matching what
      #    the libkrun/krun formula does.
      real_dylib.change_dylib_id("#{opt_lib}/libkrun.1.dylib")
      # 2. change_dylib_id rewrites the Mach-O in place and does not re-sign it,
      #    which invalidates the ad-hoc signature the release was built with. On
      #    Apple silicon an invalidly-signed dylib is refused at load time.
      system "codesign", "--force", "--sign", "-", real_dylib
      # 3. pkg-config still advertises /usr/local; all three of prefix, libdir
      #    and includedir sit under it.
      inreplace lib/"pkgconfig/libkrun.pc", "/usr/local", prefix
    else
      # The Linux tarball ships include/ and lib64/ (SONAME libkrun.so.1 with
      # the .so -> .so.1 -> .so.1.19.6 symlink chain plus pkgconfig/). Install
      # lib64 as lib to match the Homebrew-on-Linux layout — ELF has no dylib
      # id, and no codesigning is needed.
      prefix.install "include"
      lib.install Dir["lib64/*"]
      # pkg-config was generated for PREFIX=/usr/local with libdir=.../lib64;
      # fix libdir first so the generic /usr/local replacement can't miss it.
      inreplace lib/"pkgconfig/libkrun.pc" do |s|
        s.gsub! "/usr/local/lib64", lib
        s.gsub! "/usr/local", prefix
      end
    end
  end

  def caveats
    s = <<~EOS
      This is a fork of libkrun with PVH boot and virtio-fs fixes. It replaces
      libkrun/krun/libkrun — you cannot have both installed at once.
    EOS
    if OS.mac?
      s += <<~EOS

        Consumers must be codesigned with the hypervisor entitlement to boot a
        VM, e.g.:
          codesign --entitlements your.entitlements --force -s - ./your-binary
      EOS
    else
      s += <<~EOS

        libkrun dlopens libkrunfw.so.5 at runtime to obtain the guest kernel.
        Install it from your distribution (e.g. `dnf install libkrunfw`) or
        build it from https://github.com/containers/libkrunfw so it is on the
        default library search path. Booting a VM also requires KVM
        (/dev/kvm accessible to your user).
      EOS
    end
    s
  end

  test do
    # Mirrors the upstream formula's test: link against the library and create
    # a context. The return value is deliberately ignored — creating a context
    # can legitimately fail in a sandbox without hypervisor access, so this
    # asserts the headers, the link and the runtime resolution.
    (testpath/"test.c").write <<~EOS
      #include <libkrun.h>
      int main(void)
      {
          krun_create_ctx();
          return 0;
      }
    EOS
    args = ["-I#{include}", "-L#{lib}", "-lkrun"]
    args << "-Wl,-rpath,#{lib}" if OS.linux?
    system ENV.cc, "test.c", *args, "-o", "test"
    system "./test"
    if OS.mac?
      # The dylib must advertise an absolute id, otherwise anything linked
      # against it fails to load outside the Homebrew lib directory.
      assert_match opt_lib.to_s, shell_output("otool -D #{lib}/libkrun.1.dylib")
    end
    # pkg-config must point into the keg, not at the /usr/local it was built for.
    assert_match lib.to_s,
                 shell_output("pkg-config --variable=libdir #{lib}/pkgconfig/libkrun.pc")
  end
end
