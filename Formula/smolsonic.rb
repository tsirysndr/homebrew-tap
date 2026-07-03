class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.8.0/smolsonic-v0.8.0-macos-aarch64.tar.gz"
  sha256 "a1305ce0ca607e83a9e767016f210a212d4a7d20143553a2763ef8e7f9defba6"
  version "0.8.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.8.0/smolsonic-v0.8.0-macos-amd64.tar.gz"
    sha256 "883a67d8d733f81ecc4e39910e1bfa37138ab9c1bca4b2172d159e20950c2442"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.8.0/smolsonic-v0.8.0-macos-aarch64.tar.gz"
    sha256 "a1305ce0ca607e83a9e767016f210a212d4a7d20143553a2763ef8e7f9defba6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.8.0/smolsonic-v0.8.0-linux-amd64.tar.gz"
    sha256 "4e63e4a1371f78a311e2fa222a1b6551beb01ae2c55fa3a8dd547fba26e9a2d3"
  end

  def install
    bin.install "smolsonic"
  end
end
