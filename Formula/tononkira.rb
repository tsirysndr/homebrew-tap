class Tononkira < Formula
  desc "A command-line interface for tononkira.serasera.org"
  homepage "https://github.com/tsirysndr/tononkira"
  url "https://github.com/tsirysndr/tononkira/releases/download/v0.1.7/tononkira_v0.1.7_x86_64-apple-darwin.tar.gz"
  sha256 "4ab2c24bddc695ebc85c203dc4a34cf9bebaf27773e942311d94537d4d0029b4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tononkira/releases/download/v0.1.7/tononkira_v0.1.7_x86_64-apple-darwin.tar.gz"
    sha256 "4ab2c24bddc695ebc85c203dc4a34cf9bebaf27773e942311d94537d4d0029b4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tononkira/releases/download/v0.1.7/tononkira_v0.1.7_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "099f51b2cd68e9490363c552cedd397578d2c69f5c442177e31c93fbc898c28d"
  end

  def install
    bin.install "tononkira"
  end
end
