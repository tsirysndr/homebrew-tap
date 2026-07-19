class Atradio < Formula
  desc "A TUI radio player on the AT Protocol"
  homepage "https://github.com/tsirysndr/atradio.fm"
  url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.5.2/atradio-v0.5.2-macos-aarch64.tar.gz"
  sha256 "83b7818034127e0aff808b7ae4d1ae0a883d29eb25fa7edc4954eada4669d24e"
  version "0.5.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.5.2/atradio-v0.5.2-macos-amd64.tar.gz"
    sha256 "dda0cf0e8ff4752865b7487aa0601cb436b2d43da7a143e5ee5706330ee894f4"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.5.2/atradio-v0.5.2-macos-aarch64.tar.gz"
    sha256 "83b7818034127e0aff808b7ae4d1ae0a883d29eb25fa7edc4954eada4669d24e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.5.2/atradio-v0.5.2-linux-amd64.tar.gz"
    sha256 "d2f1a9726e85fbb38754dbc50ae146e66846016e45bfbd3c20766cfd61f13be3"
  end

  def install
    bin.install "atradio"
  end
end
