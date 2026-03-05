class Piratebay < Formula
  desc "A command-line tool written in Rust to search for torrents on piratebay"
  homepage "https://github.com/tsirysndr/piratebay"
  url "https://github.com/tsirysndr/piratebay/releases/download/v0.2.1/piratebay_v0.2.1_x86_64-apple-darwin.tar.gz"
  sha256 "2f1584a8ed52a84b9c400f77362266ff35cbb9fbea81356d96f488ee0d5103af"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.2.1/piratebay_v0.2.1_x86_64-apple-darwin.tar.gz"
    sha256 "2f1584a8ed52a84b9c400f77362266ff35cbb9fbea81356d96f488ee0d5103af"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.2.1/piratebay_v0.2.1_aarch64-apple-darwin.tar.gz"
    sha256 "20c8d5803716e36754319547ea6d54b24f11a34eb71693b71f1d429eb429594f"
  end
  
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.2.1/piratebay_v0.2.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d06bf3d8e43a570ee7a1a2ea48227b6deda7ae244628954a77ffb8a98ed6aa49"
  end

  def install
    bin.install "piratebay"
  end
end
