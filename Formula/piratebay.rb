class Piratebay < Formula
  desc "A command-line tool written in Rust to search and download for torrents on piratebay"
  homepage "https://github.com/tsirysndr/piratebay"
  url "https://github.com/tsirysndr/piratebay/releases/download/v0.4.0/piratebay_v0.4.0_aarch64-apple-darwin.tar.gz"
  sha256 "3536a5ca9718bdff1093a9490126bdc5c320b99f7c93ae64945a92e4c996527d"
  version "0.4.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.4.0/piratebay_v0.4.0_x86_64-apple-darwin.tar.gz"
    sha256 "8d2bf2c3b4ce4b022472c5086d6bbe49dc5d0bc023727dcc6a51f71498811a7f"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.4.0/piratebay_v0.4.0_aarch64-apple-darwin.tar.gz"
    sha256 "3536a5ca9718bdff1093a9490126bdc5c320b99f7c93ae64945a92e4c996527d"
  end
  
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.4.0/piratebay_v0.4.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "81a0dda1c001317ac1dc31376fff6b3e8b661825e278cbfa6cbaac70e92ba9bb"
  end

  def install
    bin.install "piratebay"
  end
end
