class Fin < Formula
  desc "a neon-electric TUI Jellyfin & Navidrome client - powered by symphonia, mpv, Chromecast & UPnP MediaRenderer"
  homepage "https://github.com/tsirysndr/fin"
  url "https://github.com/tsirysndr/fin/releases/download/v0.4.0/fin-v0.4.0-macos-aarch64.tar.gz"
  sha256 "2ed1836058dd79ab2fb0bd1a6b514772b1227a207a9d4437f28042af51e9888e"
  version "0.4.0"

  depends_on "mpv"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/fin/releases/download/v0.4.0/fin-v0.4.0-macos-amd64.tar.gz"
    sha256 "3cd9caf70daeba533ea8c06f50c5cfec1713c721466d73e0bbf2fb69f8f7409b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/fin/releases/download/v0.4.0/fin-v0.4.0-macos-aarch64.tar.gz"
    sha256 "2ed1836058dd79ab2fb0bd1a6b514772b1227a207a9d4437f28042af51e9888e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/fin/releases/download/v0.4.0/fin-v0.4.0-linux-amd64.tar.gz"
    sha256 "d7ca69ddab0300669c71eee1c03c8a99036dc8f2f8ae2c5f72b0eb463495e8a6"
  end

  def install
    bin.install "fin"
  end
end
