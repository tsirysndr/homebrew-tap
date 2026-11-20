class Bsdkrun < Formula
  desc "MicroVM launcher for BSD, Linux and unikernel guests"
  homepage "https://github.com/tsirysndr/bsdkrun"
  version "0.12.1"
  license "MIT"

  # gvproxy (user-mode networking) comes from the libkrun/krun tap; the
  # fully-qualified name makes `brew` auto-tap it. xz decompresses BSD images.
  depends_on "libkrun/krun/gvproxy"
  depends_on "xz"

  on_macos do
    on_arm do
      url "https://github.com/tsirysndr/bsdkrun/releases/download/v#{version}/bsdkrun-aarch64-apple-darwin.tar.gz"
      sha256 "b59863d77b9299ce82b498888532d234ade0a4ff1300740cf6636f7855dddf15"
    end

    # A signed arm64 binary linking libkrun (Hypervisor.framework, Apple Silicon).
    depends_on arch: :arm64

    # libkrun is our own fork, which carries the PVH boot and virtio-fs fixes
    # bsdkrun needs. The fully-qualified name makes `brew` auto-tap it. Note that
    # both libkrun formulae install to the same opt prefix (it is keyed on the
    # formula name, not the tap), so an already-linked bsdkrun keeps resolving.
    depends_on "tsirysndr/tap/libkrun"
  end

  on_linux do
    on_intel do
      url "https://github.com/tsirysndr/bsdkrun/releases/download/v#{version}/bsdkrun-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd9d6204a568cda7661f71ae996a1d22dca3715b0f2bcaf5d44024101f74fe6e"
    end

    on_arm do
      url "https://github.com/tsirysndr/bsdkrun/releases/download/v#{version}/bsdkrun-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd1fe80fd90b55f1840f6e89ce71214745d2618e81e93008e9c1b32059c6216c"
    end

    # The Linux tarballs bundle libkrun.so.1 (RUNPATH=$ORIGIN), so no libkrun
    # formula dependency is needed here.
  end

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
      # The tarball also carries bsdkrun-supervisor; that one is installed by
      # the bsdkrun-supervisor formula, so it is deliberately left out here.
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
