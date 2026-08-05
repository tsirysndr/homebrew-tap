class Libkrun < Formula
  desc "Dynamic library providing HVF-based process isolation (PVH + virtio-fs fork)"
  homepage "https://github.com/tsirysndr/libkrun"
  url "https://github.com/tsirysndr/libkrun/releases/download/v1.19.4-pvh/libkrun-v1.19.4-pvh-aarch64-apple-darwin.tar.gz"
  version "1.19.4-pvh"
  sha256 "a6556fd0c6e97674db4b03e2a17c98183d25f08095f49708ff82600a4123dc36"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
    regex(/^v?(\d+(?:\.\d+)+-pvh\d*)$/i)
  end

  # Only an arm64 macOS tarball is published; the release workflow builds on
  # macos-latest (Apple silicon). libkrun dlopens libkrunfw.5.dylib at runtime
  # to get the guest kernel — that is not in the dylib's load commands, so
  # Homebrew cannot infer it.
  depends_on arch: :arm64
  depends_on "libkrun/krun/libkrunfw"
  depends_on :macos

  conflicts_with "libkrun/krun/libkrun",
                 because: "both install libkrun.dylib and the libkrun headers"

  def install
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
  end

  def caveats
    <<~EOS
      This is a fork of libkrun with PVH boot and virtio-fs fixes. It replaces
      libkrun/krun/libkrun — you cannot have both installed at once.

      Consumers must be codesigned with the hypervisor entitlement to boot a
      VM, e.g.:
        codesign --entitlements your.entitlements --force -s - ./your-binary
    EOS
  end

  test do
    # Mirrors the upstream formula's test: link against the library and create
    # a context. The return value is deliberately ignored — creating a context
    # can legitimately fail in a sandbox without the hypervisor entitlement,
    # so this asserts the headers, the link and the dylib id resolve.
    (testpath/"test.c").write <<~EOS
      #include <libkrun.h>
      int main(void)
      {
          krun_create_ctx();
          return 0;
      }
    EOS
    system ENV.cc, "test.c", "-I#{include}", "-L#{lib}", "-lkrun", "-o", "test"
    system "./test"

    # The dylib must advertise an absolute id, otherwise anything linked
    # against it fails to load outside the Homebrew lib directory.
    assert_match opt_lib.to_s, shell_output("otool -D #{lib}/libkrun.1.dylib")

    # pkg-config must point into the keg, not at the /usr/local it was built for.
    assert_match prefix.to_s,
                 shell_output("pkg-config --variable=libdir #{lib}/pkgconfig/libkrun.pc")
  end
end
