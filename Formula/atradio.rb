class Atradio < Formula
  desc "A TUI radio player on the AT Protocol"
  homepage "https://github.com/tsirysndr/atradio.fm"
  url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.1.0/atradio-v0.1.0-macos-aarch64.tar.gz"
  sha256 "eb97817a8df6d6820f03d6688ad04dcd61eb27c84de31a4b9698f653c5935492"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.1.0/atradio-v0.1.0-macos-amd64.tar.gz"
    sha256 "230a8f17f14855b4741b5ec95ad156da5bb6e373a51339a9b516467a203f58f4"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.1.0/atradio-v0.1.0-macos-aarch64.tar.gz"
    sha256 "eb97817a8df6d6820f03d6688ad04dcd61eb27c84de31a4b9698f653c5935492"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.1.0/atradio-v0.1.0-linux-amd64.tar.gz"
    sha256 "5ca6970e6d95e0b9e6ae1fc6c9bcb6cdfd40a31b73fc1434df5211786cb9b364"
  end

  def install
    bin.install "atradio"
  end
end
