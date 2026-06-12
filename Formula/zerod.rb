class Zerod < Formula
  desc "Headless gRPC daemon for Linux audio: Bluetooth, HLS/DASH and systemd"
  homepage "https://github.com/tsirysndr/zerod"
  url "https://github.com/tsirysndr/zerod/releases/download/v0.3.1/zerod-aarch64-apple-darwin.tar.gz"
  sha256 "45a0a9d0e4103616ee909b030d4d0194c28dfa81e34d8aa06fc8f12064179e0b"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/zerod/releases/download/v0.3.1/zerod-x86_64-apple-darwin.tar.gz"
    sha256 "7043f7459f0b1f6a322f1d6be960dddb82e54923d5f5f959e52e25d8d1ab3caf"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/zerod/releases/download/v0.3.1/zerod-aarch64-apple-darwin.tar.gz"
    sha256 "45a0a9d0e4103616ee909b030d4d0194c28dfa81e34d8aa06fc8f12064179e0b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/zerod/releases/download/v0.3.1/zerod-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "69e2d554fb4a7355ab2f9bbf0dd94bb5278e87bc2892f4dc8f2a9da8c3bd72d0"
  end

  def install
    bin.install "zerod"
  end
end
