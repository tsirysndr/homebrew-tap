class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.10.0/smolsonic-v0.10.0-macos-aarch64.tar.gz"
  sha256 "4abb198919a34e4d58e789c33bee576215c642f30b5ff13430c08311dfec844d"
  version "0.10.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.10.0/smolsonic-v0.10.0-macos-amd64.tar.gz"
    sha256 "7c8eda0beba5ae027de76093d5ce1289b7714e4c98676c2646cb5e15c7b7c362"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.10.0/smolsonic-v0.10.0-macos-aarch64.tar.gz"
    sha256 "4abb198919a34e4d58e789c33bee576215c642f30b5ff13430c08311dfec844d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.10.0/smolsonic-v0.10.0-linux-amd64.tar.gz"
    sha256 "54c98d92668b43ff28350ccac6a8ecca6e352fb3262165b1ae55d087a07fb10c"
  end

  def install
    bin.install "smolsonic"
  end
end
