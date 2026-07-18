class Atradio < Formula
  desc "A TUI radio player on the AT Protocol"
  homepage "https://github.com/tsirysndr/atradio.fm"
  url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.5.0/atradio-v0.5.0-macos-aarch64.tar.gz"
  sha256 "2c67704470adbcc46c4e46039a1d81610177439d621ba0a611d246b68f30e436"
  version "0.5.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.5.0/atradio-v0.5.0-macos-amd64.tar.gz"
    sha256 "230f2f2dae04c9fc5c7a3905c1224bfb702ae96ea759f8e2ea2b13ce4a689e9b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.5.0/atradio-v0.5.0-macos-aarch64.tar.gz"
    sha256 "2c67704470adbcc46c4e46039a1d81610177439d621ba0a611d246b68f30e436"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.5.0/atradio-v0.5.0-linux-amd64.tar.gz"
    sha256 "e53fba1439cc81539bd7073184aa64e6cfa8819654bb3acd15493be305f70365"
  end

  def install
    bin.install "atradio"
  end
end
