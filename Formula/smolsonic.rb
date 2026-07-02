class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.6.3/smolsonic-v0.6.3-macos-aarch64.tar.gz"
  sha256 "d7c99df873bdc57fe1c865d02cb4976dd19a8f69a2d5a980b0756bd4364e1a38"
  version "0.6.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.6.3/smolsonic-v0.6.3-macos-amd64.tar.gz"
    sha256 "62cfe0ab5ef89ad3bd47b653fa8b25b46ad57182938966d28f752cf88fbc0a60"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.6.3/smolsonic-v0.6.3-macos-aarch64.tar.gz"
    sha256 "d7c99df873bdc57fe1c865d02cb4976dd19a8f69a2d5a980b0756bd4364e1a38"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.6.3/smolsonic-v0.6.3-linux-amd64.tar.gz"
    sha256 "d85493b771996df8f74a92a0c7dfcb4990fcaa1bddf67f28cad626b43a3fbc5e"
  end

  def install
    bin.install "smolsonic"
  end
end
