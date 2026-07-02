class Fin < Formula
  desc "a neon-electric TUI Jellyfin client for mpv & Chromecast"
  homepage "https://github.com/tsirysndr/fin"
  url "https://github.com/tsirysndr/fin/releases/download/v0.1.0/fin-v0.1.0-macos-aarch64.tar.gz"
  sha256 "c60a4739962c51855dcfee384602b421cbf608210e2a206a8dd2eb4878a12f34"
  version "0.1.0"

  depends_on "mpv"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/fin/releases/download/v0.1.0/fin-v0.1.0-macos-amd64.tar.gz"
    sha256 "d01baa3952ae4c14b028890f894af9f69b9fdfe78d2183ac7db266e51f15140b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/fin/releases/download/v0.1.0/fin-v0.1.0-macos-aarch64.tar.gz"
    sha256 "c60a4739962c51855dcfee384602b421cbf608210e2a206a8dd2eb4878a12f34"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/fin/releases/download/v0.1.0/fin-v0.1.0-linux-amd64.tar.gz"
    sha256 "901296c09067e8ebaff3fa17f894269cf8d3e880e6a4aacd899caa596989bf0e"
  end

  def install
    bin.install "fin"
  end
end
