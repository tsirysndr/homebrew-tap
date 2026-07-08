class Fin < Formula
  desc "a neon-electric TUI Jellyfin & Navidrome client - powered by symphonia, mpv, Chromecast & UPnP MediaRenderer"
  homepage "https://github.com/tsirysndr/fin"
  url "https://github.com/tsirysndr/fin/releases/download/v0.5.0/fin-v0.5.0-macos-aarch64.tar.gz"
  sha256 "d5f4af1e2ebbec5358533176645c79f51fcd461bf1f6f63f57e1dbaa9c5eb8d9"
  version "0.5.0"

  depends_on "mpv"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/fin/releases/download/v0.5.0/fin-v0.5.0-macos-amd64.tar.gz"
    sha256 "ba952ac9ac5aee717f305897955404c7ff4bfeeaf1557f3b87b36f0efee6f1da"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/fin/releases/download/v0.5.0/fin-v0.5.0-macos-aarch64.tar.gz"
    sha256 "d5f4af1e2ebbec5358533176645c79f51fcd461bf1f6f63f57e1dbaa9c5eb8d9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/fin/releases/download/v0.5.0/fin-v0.5.0-linux-amd64.tar.gz"
    sha256 "5dde49758193e8470bd31b3cc8148e7a76cbc505d55231ba9099724213c3abc6"
  end

  def install
    bin.install "fin"
  end
end
