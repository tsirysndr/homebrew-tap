class Piratebay < Formula
  desc "A command-line tool written in Rust to search and download for torrents on piratebay"
  homepage "https://github.com/tsirysndr/piratebay"
  url "https://github.com/tsirysndr/piratebay/releases/download/v0.5.0/piratebay_v0.5.0_aarch64-apple-darwin.tar.gz"
  sha256 "e2afb6a566c8c50cf2ff8662621bdee9952c853c891813c33f9a507cb5e3545c"
  version "0.5.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.5.0/piratebay_v0.5.0_x86_64-apple-darwin.tar.gz"
    sha256 "23bc97768b1e3f6bf28524f8cd15addbee792077ce5a2125e843261d79f231c5"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.5.0/piratebay_v0.5.0_aarch64-apple-darwin.tar.gz"
    sha256 "e2afb6a566c8c50cf2ff8662621bdee9952c853c891813c33f9a507cb5e3545c"
  end
  
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.5.0/piratebay_v0.5.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "06ad7c4d08b82a05e50b033d0a6c9c47ddcf51e610b675ff21594d3dc9e6e224"
  end

  def install
    bin.install "piratebay"
  end
end
