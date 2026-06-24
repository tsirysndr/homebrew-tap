class Piratebay < Formula
  desc "A command-line tool written in Rust to search for torrents on piratebay"
  homepage "https://github.com/tsirysndr/piratebay"
  url "https://github.com/tsirysndr/piratebay/releases/download/v0.3.0/piratebay_v0.3.0_x86_64-apple-darwin.tar.gz"
  sha256 "9d8b9a61c71098169d6532591a7c67652903e930cca7817a107dac0ec592ec74"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.3.0/piratebay_v0.3.0_x86_64-apple-darwin.tar.gz"
    sha256 "9d8b9a61c71098169d6532591a7c67652903e930cca7817a107dac0ec592ec74"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.3.0/piratebay_v0.3.0_aarch64-apple-darwin.tar.gz"
    sha256 "cd20c2d8af7c453831b94e42a0fbcdf83d900c1da32a2713da1fd71a45bc3c25"
  end
  
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.3.0/piratebay_v0.3.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "12330a444bce1b4d23fded131de4939ac446887f5b72d548f93859fc2e1834df"
  end

  def install
    bin.install "piratebay"
  end
end
