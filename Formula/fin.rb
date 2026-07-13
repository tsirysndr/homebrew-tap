class Fin < Formula
  desc "a neon-electric TUI Jellyfin & Navidrome client - powered by symphonia, mpv, Chromecast & UPnP MediaRenderer"
  homepage "https://github.com/tsirysndr/fin"
  url "https://github.com/tsirysndr/fin/releases/download/v0.6.0/fin-v0.6.0-macos-aarch64.tar.gz"
  sha256 "86d6f4aa3af7e31e7da57253309635c645df23fc7e029e112917a8e610df6cef"
  version "0.6.0"

  depends_on "mpv"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/fin/releases/download/v0.6.0/fin-v0.6.0-macos-amd64.tar.gz"
    sha256 "bdb44e57018353aa914ccddea02f85d1905455196f591334c58dc15b69097809"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/fin/releases/download/v0.6.0/fin-v0.6.0-macos-aarch64.tar.gz"
    sha256 "86d6f4aa3af7e31e7da57253309635c645df23fc7e029e112917a8e610df6cef"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/fin/releases/download/v0.6.0/fin-v0.6.0-linux-amd64.tar.gz"
    sha256 "ec82918c04fedf7d0de116ea27fbf9a1ebbeb50184cb5ea39b4e3038bab61898"
  end

  def install
    bin.install "fin"
  end
end
