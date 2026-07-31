class Bsdkrun < Formula
  desc "Firecracker-style microVM launcher for BSD and Linux on Apple Silicon"
  homepage "https://github.com/tsirysndr/bsdkrun"
  url "https://github.com/tsirysndr/bsdkrun/releases/download/v0.1.0/bsdkrun-aarch64-apple-darwin.tar.gz"
  sha256 "f03254dad40b8db3429d3c3ad34f87e39d9c7a272b94552a9d24dfbf85c95a80"
  license "MIT"

  # A signed arm64 binary linking libkrun (Hypervisor.framework, Apple Silicon).
  depends_on arch: :arm64
  # gvproxy (user-mode networking) and libkrun live in the libkrun/krun tap;
  # fully-qualified names make `brew` auto-tap it. xz decompresses BSD images.
  depends_on "libkrun/krun/gvproxy"
  depends_on "libkrun/krun/libkrun"
  depends_on "xz"

  def install
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
  end

  def caveats
    <<~EOS
      bsdkrun downloads its guest kernel, OCI images, and exec agent on first use
      and caches them under ~/.cache/bsdkrun. It requires Apple Silicon
      (Hypervisor.framework); Intel Macs are not supported.
    EOS
  end

  test do
    assert_match "bsdkrun #{version}", shell_output("#{bin}/bsdkrun --version")
  end
end
