class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.3.0/tunein_v0.3.0_aarch64-apple-darwin.tar.gz"
  sha256 "6382ab683df74c51993e7f2caba609bd9f202c530fdb90b2d40e40ecacaee250"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.3.0/tunein_v0.3.0_x86_64-apple-darwin.tar.gz"
    sha256 "72b14bd84f12733975accc52a6c677b0ba298f43b415481af1ba7c268556ca8c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.3.0/tunein_v0.3.0_aarch64-apple-darwin.tar.gz"
    sha256 "6382ab683df74c51993e7f2caba609bd9f202c530fdb90b2d40e40ecacaee250"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.3.0/tunein_v0.3.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "804e60e7e11e943e9322ec85c9f6fe4c309164b8fddb50277cda5b6032dee976"
  end

  def install
    bin.install "tunein"
  end
end
