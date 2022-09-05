class Piratebay < Formula
  desc "A command-line tool written in Rust to search for torrents on piratebay"
  homepage "https://github.com/tsirysndr/piratebay"
  url "https://github.com/tsirysndr/piratebay/releases/download/v0.1.5/piratebay_v0.1.5_x86_64-apple-darwin.tar.gz"
  sha256 "717a0753d1bc04d7bcee29c2c8b7cd0c0760a477a0901190ce532dfbc869af82"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.1.5/piratebay_v0.1.5_x86_64-apple-darwin.tar.gz"
    sha256 "717a0753d1bc04d7bcee29c2c8b7cd0c0760a477a0901190ce532dfbc869af82"
  end

  def install
    bin.install "piratebay"
  end
end
