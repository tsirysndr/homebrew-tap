class Fin < Formula
  desc "a neon-electric TUI Jellyfin & Navidrome client - powered by symphonia, mpv, Chromecast & UPnP MediaRenderer"
  homepage "https://github.com/tsirysndr/fin"
  url "https://github.com/tsirysndr/fin/releases/download/v0.3.1/fin-v0.3.1-macos-aarch64.tar.gz"
  sha256 "7b755b4790cf4719f06b4bfe461f0c7f017e5464b94bf931b429fdcae27f3e86"
  version "0.3.1"

  depends_on "mpv"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/fin/releases/download/v0.3.1/fin-v0.3.1-macos-amd64.tar.gz"
    sha256 "fa78474bddb92fa2e40e8e10ae25dfe38dc9b1a48abbc08ce1fad546c474e1dc"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/fin/releases/download/v0.3.1/fin-v0.3.1-macos-aarch64.tar.gz"
    sha256 "7b755b4790cf4719f06b4bfe461f0c7f017e5464b94bf931b429fdcae27f3e86"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/fin/releases/download/v0.3.1/fin-v0.3.1-linux-amd64.tar.gz"
    sha256 "0bf4f03d642932308193cff97036b2fa01006fc92d44d3d1e65f04c7048d848d"
  end

  def install
    bin.install "fin"
  end
end
