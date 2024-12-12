class Piratebay < Formula
  desc "A command-line tool written in Rust to search for torrents on piratebay"
  homepage "https://github.com/tsirysndr/piratebay"
  url "https://github.com/tsirysndr/piratebay/releases/download/v0.1.9/piratebay_v0.1.9_x86_64-apple-darwin.tar.gz"
  sha256 ""

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.1.9/piratebay_v0.1.9_x86_64-apple-darwin.tar.gz"
    sha256 "c9576aafd84b07b2daf4a137c0f2e14954f801e4723b6f314a28e04ac6a6566d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.1.9/piratebay_v0.1.9_aarch64-apple-darwin.tar.gz"
    sha256 "6ff2b751de18ab3256b41734d9251a3acce05da4f18cd5ad35127bf49b6c7c71"
  end
  
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.1.9/piratebay_v0.1.9_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d9eff29fc3b20a2a82f7a2ae93be3be8f623dd14d86ec836dc8df4dd39cfc2e0"
  end

  def install
    bin.install "piratebay"
  end
end
