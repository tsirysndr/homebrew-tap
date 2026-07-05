class Fin < Formula
  desc "a neon-electric TUI Jellyfin & Navidrome client - powered by symphonia, mpv, Chromecast & UPnP MediaRenderer"
  homepage "https://github.com/tsirysndr/fin"
  url "https://github.com/tsirysndr/fin/releases/download/v0.3.0/fin-v0.3.0-macos-aarch64.tar.gz"
  sha256 "1e18f182ce2d18bb45ee9cec1e28975bceb294e7c4efe4afa0f53f8ea3fe887a"
  version "0.3.0"

  depends_on "mpv"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/fin/releases/download/v0.3.0/fin-v0.3.0-macos-amd64.tar.gz"
    sha256 "a0612a1a1a02c7e2c72d0af82abbdbbd5729074a298933ab29a1f350569345ea"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/fin/releases/download/v0.3.0/fin-v0.3.0-macos-aarch64.tar.gz"
    sha256 "1e18f182ce2d18bb45ee9cec1e28975bceb294e7c4efe4afa0f53f8ea3fe887a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/fin/releases/download/v0.3.0/fin-v0.3.0-linux-amd64.tar.gz"
    sha256 "90e76e6a9528b1d2e5ccbcf965f5d87730ac70baa26bb5add20013edcebaa61d"
  end

  def install
    bin.install "fin"
  end
end
