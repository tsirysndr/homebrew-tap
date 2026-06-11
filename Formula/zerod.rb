class Zerod < Formula
  desc "Headless gRPC daemon for Linux audio: Bluetooth, HLS/DASH and systemd"
  homepage "https://github.com/tsirysndr/zerod"
  url "https://github.com/tsirysndr/zerod/releases/download/v0.2.0/zerod-aarch64-apple-darwin.tar.gz"
  sha256 "c1b3b76ef5811911c62d09ac459fa0fee2f9b1f8964f39b2f569e6d79f8b7125"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/zerod/releases/download/v0.2.0/zerod-x86_64-apple-darwin.tar.gz"
    sha256 "0d3ad1eb950d98685e1daacbe3157db5971ffa72c4fb6a7642a03b2327ba02ca"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/zerod/releases/download/v0.2.0/zerod-aarch64-apple-darwin.tar.gz"
    sha256 "c1b3b76ef5811911c62d09ac459fa0fee2f9b1f8964f39b2f569e6d79f8b7125"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/zerod/releases/download/v0.2.0/zerod-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "928709c5043eb00be91ccf25eea9b4cf85959f5be57c665741c4eaff8c19c378"
  end

  def install
    bin.install "zerod"
  end
end
