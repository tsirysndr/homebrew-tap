class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.7.0/smolsonic-v0.7.0-macos-aarch64.tar.gz"
  sha256 "5013adca5574b10d491e97638c97ada8fcaff48ff6bcd6a2154e9836bdf0e923"
  version "0.7.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.7.0/smolsonic-v0.7.0-macos-amd64.tar.gz"
    sha256 "e3f67b138ee5b953351adc2e4687d5e621cdc1441ea296d892fe589d945e0603"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.7.0/smolsonic-v0.7.0-macos-aarch64.tar.gz"
    sha256 "5013adca5574b10d491e97638c97ada8fcaff48ff6bcd6a2154e9836bdf0e923"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.7.0/smolsonic-v0.7.0-linux-amd64.tar.gz"
    sha256 "cf3be922db999031e5490624ac2188e3b9228f739338e60af7fb71c075b3d9bf"
  end

  def install
    bin.install "smolsonic"
  end
end
