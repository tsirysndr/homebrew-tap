class Bsdkrun < Formula
  desc "Firecracker-style microVM launcher for BSD and Linux on Apple Silicon"
  homepage "https://github.com/tsirysndr/bsdkrun"
  license "MIT"
  version "0.9.0"

  on_macos do
    url "https://github.com/tsirysndr/bsdkrun/releases/download/v0.9.0/bsdkrun-aarch64-apple-darwin.tar.gz"
    sha256 "1d73b43cc2978f1a60b6efc222d8882ec964e6f93612f063ae9819e762e637f1"

    # A signed arm64 binary linking libkrun (Hypervisor.framework, Apple Silicon).
    depends_on arch: :arm64

    # libkrun is our own fork, which carries the PVH boot and virtio-fs fixes
    # bsdkrun needs. The fully-qualified name makes `brew` auto-tap it. Note that
    # both libkrun formulae install to the same opt prefix (it is keyed on the
    # formula name, not the tap), so an already-linked bsdkrun keeps resolving.
    depends_on "tsirysndr/tap/libkrun"
  end

  on_linux do
    url "https://github.com/tsirysndr/bsdkrun/releases/download/v0.9.0/bsdkrun-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bf789af267831230c839acae1373b3296d3a69f08bb36467d6e226376c057493"

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
      libexec.install "bsdkrun", "libkrun.so.1"
      bin.install_symlink libexec/"bsdkrun"
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
