class Bsdkrun < Formula
  desc "Firecracker-style microVM launcher for BSD and Linux on Apple Silicon"
  homepage "https://github.com/tsirysndr/bsdkrun"
  license "MIT"
  version "0.7.0"

  on_macos do
    url "https://github.com/tsirysndr/bsdkrun/releases/download/v0.7.0/bsdkrun-aarch64-apple-darwin.tar.gz"
    sha256 "a8322f3272b4c47c368e54b272520769b79fcb50a762f674f1873220feef3c2d"

    # A signed arm64 binary linking libkrun (Hypervisor.framework, Apple Silicon).
    depends_on arch: :arm64

    # libkrun is our own fork, which carries the PVH boot and virtio-fs fixes
    # bsdkrun needs. The fully-qualified name makes `brew` auto-tap it. Note that
    # both libkrun formulae install to the same opt prefix (it is keyed on the
    # formula name, not the tap), so an already-linked bsdkrun keeps resolving.
    depends_on "tsirysndr/tap/libkrun"
  end

  on_linux do
    url "https://github.com/tsirysndr/bsdkrun/releases/download/v0.7.0/bsdkrun-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1097cf90dd367370c98b2484a03b637e0e7bcba52bdd1001f49ec0cdbc3010a7"

    depends_on arch: :x86_64
    # The Linux tarball bundles libkrun.so.1 (RUNPATH=$ORIGIN), so no libkrun
    # formula dependency is needed here.
  end

  # gvproxy (user-mode networking) comes from the libkrun/krun tap; the
  # fully-qualified name makes `brew` auto-tap it. xz decompresses BSD images.
  depends_on "libkrun/krun/gvproxy"
  depends_on "xz"

  def install
    if OS.mac?
      bin.install "bsdkrun"
      bin.install "bsdkrun-supervisor"
      # The release binary already ships ad-hoc signed with the Hypervisor.framework
      # entitlement libkrun requires; re-assert it so it survives installation.
      (buildpath/"bsdkrun.entitlements").write <<~XML
        <?xml version="1.0" encoding="UTF-8"?>
        <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
        <plist version="1.0">
        <dict>
          <key>com.apple.security.hypervisor</key>
          <true/>
          <key>com.apple.security.cs.disable-library-validation</key>
          <true/>
        </dict>
        </plist>
      XML
      system "codesign", "--entitlements", buildpath/"bsdkrun.entitlements",
             "--force", "--sign", "-", bin/"bsdkrun"
    else
      # No codesigning on Linux. Keep the binary next to its bundled
      # libkrun.so.1 so the $ORIGIN runpath resolves, and symlink into bin.
      libexec.install "bsdkrun", "bsdkrun-supervisor", "libkrun.so.1"
      bin.install_symlink libexec/"bsdkrun"
      bin.install_symlink libexec/"bsdkrun-supervisor"
    end
  end

  def caveats
    s = <<~EOS
      bsdkrun downloads its guest kernel, OCI images, and exec agent on first use
      and caches them under ~/.cache/bsdkrun.
    EOS
    s += "\nIt requires Apple Silicon (Hypervisor.framework); Intel Macs are not supported.\n" if OS.mac?
    s += "\nOn Linux it requires KVM (/dev/kvm accessible to your user).\n" if OS.linux?
    s
  end

  test do
    assert_match "bsdkrun #{version}", shell_output("#{bin}/bsdkrun --version")
  end
end
