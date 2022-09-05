class Kickasstorrent < Formula
  desc "Command-line tool for KickassTorrents"
  homepage "https://github.com/tsirysndr/kickasstorrent"
  url "https://github.com/tsirysndr/kickasstorrent/releases/download/v0.1.7/kickasstorrent_v0.1.7_x86_64-apple-darwin.tar.gz"
  sha256 "268c1d447a971a557937a97b2bc1ab7d702478090868eeb33ecb2aacb828e6bf"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/kickasstorrent/releases/download/v0.1.7/kickasstorrent_v0.1.7_x86_64-apple-darwin.tar.gz"
    sha256 "268c1d447a971a557937a97b2bc1ab7d702478090868eeb33ecb2aacb828e6bf"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/kickasstorrent/releases/download/v0.1.7/kickasstorrent_v0.1.7_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ec9d81ee5f6c35e264ed1dba72243ab6c0801ad406440fd0f36564cdf0d49d63"
  end

  def install
    bin.install "kickasstorrent"
  end
end
