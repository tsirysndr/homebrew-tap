class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.4.1/tunein_v0.4.1_aarch64-apple-darwin.tar.gz"
  sha256 "400ce958e34343dd780427a6adfa73a007be54364b01e50e6ad927ae2a4e44ea"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.4.1/tunein_v0.4.1_x86_64-apple-darwin.tar.gz"
    sha256 "bc1ad6ba45057fa5d22ebd248b3ba5600a6e02e8b755d398c775291cd4036b59"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.4.1/tunein_v0.4.1_aarch64-apple-darwin.tar.gz"
    sha256 "400ce958e34343dd780427a6adfa73a007be54364b01e50e6ad927ae2a4e44ea"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.4.1/tunein_v0.4.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3d7a1cd0c975a8bb94b8e5ff308bf8ae3220b2c359a0dd57e34119a262ed2d0d"
  end

  def install
    bin.install "tunein"
  end
end
