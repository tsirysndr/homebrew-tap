class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.3.2/tunein_v0.3.2_aarch64-apple-darwin.tar.gz"
  sha256 "96c646f5e5307142499dcd295169be31495b7b3191adb861bbdc01c01bf9e006"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.3.2/tunein_v0.3.2_x86_64-apple-darwin.tar.gz"
    sha256 "96cdf320d733e88bcfa7db8d490da9398729a2e5815af85f58289602c01845f6"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.3.2/tunein_v0.3.2_aarch64-apple-darwin.tar.gz"
    sha256 "96c646f5e5307142499dcd295169be31495b7b3191adb861bbdc01c01bf9e006"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.3.2/tunein_v0.3.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "86fed211db28904d511fc235aedc9f0a0a04fbbf840fbf7f0be46dd8920d61de"
  end

  def install
    bin.install "tunein"
  end
end
