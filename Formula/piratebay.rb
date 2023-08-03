class Piratebay < Formula
  desc "A command-line tool written in Rust to search for torrents on piratebay"
  homepage "https://github.com/tsirysndr/piratebay"
  url "https://github.com/tsirysndr/piratebay/releases/download/v0.1.6/piratebay_v0.1.6_x86_64-apple-darwin.tar.gz"
  sha256 "b55b2b154560e17636379b97608710d54f7e29efe734ec5447a466f646d65235"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.1.6/piratebay_v0.1.6_x86_64-apple-darwin.tar.gz"
    sha256 "b55b2b154560e17636379b97608710d54f7e29efe734ec5447a466f646d65235"
  end

  def install
    bin.install "piratebay"
  end
end
