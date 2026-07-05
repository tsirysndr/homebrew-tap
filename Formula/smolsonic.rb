class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.8.1/smolsonic-v0.8.1-macos-aarch64.tar.gz"
  sha256 ""
  version "0.8.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.8.1/smolsonic-v0.8.1-macos-amd64.tar.gz"
    sha256 ""
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.8.1/smolsonic-v0.8.1-macos-aarch64.tar.gz"
    sha256 ""
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.8.1/smolsonic-v0.8.1-linux-amd64.tar.gz"
    sha256 ""
  end

  def install
    bin.install "smolsonic"
  end
end
