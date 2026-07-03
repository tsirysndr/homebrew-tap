class Fin < Formula
  desc "a neon-electric TUI Jellyfin client for mpv, Chromecast & UPnP MediaRenderer"
  homepage "https://github.com/tsirysndr/fin"
  url "https://github.com/tsirysndr/fin/releases/download/v0.2.0/fin-v0.2.0-macos-aarch64.tar.gz"
  sha256 "b6e6f709aa2e5990956c76a673691929c53635f17711d30eff16bb2137768d08"
  version "0.2.0"

  depends_on "mpv"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/fin/releases/download/v0.2.0/fin-v0.2.0-macos-amd64.tar.gz"
    sha256 "dab8deb17fb4ab61a5d1aabbcb33ddd3b8673ed5d9e83d86dbbc286a0a69b8fd"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/fin/releases/download/v0.2.0/fin-v0.2.0-macos-aarch64.tar.gz"
    sha256 "b6e6f709aa2e5990956c76a673691929c53635f17711d30eff16bb2137768d08"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/fin/releases/download/v0.2.0/fin-v0.2.0-linux-amd64.tar.gz"
    sha256 "c8f12b25c3dc918b4c17c38f29d4cb4ae05d6556887c7bed4085f80f49ad163b"
  end

  def install
    bin.install "fin"
  end
end
