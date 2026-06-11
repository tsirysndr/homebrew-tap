class Zerod < Formula
  desc "Headless gRPC daemon for Linux audio: Bluetooth, HLS/DASH and systemd"
  homepage "https://github.com/tsirysndr/zerod"
  url "https://github.com/tsirysndr/zerod/releases/download/v0.3.0/zerod-aarch64-apple-darwin.tar.gz"
  sha256 "10d712d99899742a9d24c902ddee941044d9c06e86ba9f4fdd571e5a340af68b"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/zerod/releases/download/v0.3.0/zerod-x86_64-apple-darwin.tar.gz"
    sha256 "16e5cc8ee586bba5874ba7ddbe05e74af7b499622edc71dd4a42c619320ce1ff"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/zerod/releases/download/v0.3.0/zerod-aarch64-apple-darwin.tar.gz"
    sha256 "10d712d99899742a9d24c902ddee941044d9c06e86ba9f4fdd571e5a340af68b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/zerod/releases/download/v0.3.0/zerod-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "86fb69c857c7edd82126c2f652bfd9e6caa4067bab48193db4c1fed07b7ddb08"
  end

  def install
    bin.install "zerod"
  end
end
