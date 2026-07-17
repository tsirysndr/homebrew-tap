class Atradio < Formula
  desc "A TUI radio player on the AT Protocol"
  homepage "https://github.com/tsirysndr/atradio.fm"
  url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.2.1/atradio-v0.2.1-macos-aarch64.tar.gz"
  sha256 "6b96d78f86bb2fde84e18d0eccd34b81de0c2bc7df4ccf93b95cc91af1c260cc"
  version "0.2.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.2.1/atradio-v0.2.1-macos-amd64.tar.gz"
    sha256 "f6d39f1742c8047fa8e7520742b5f886564352349a67dc32e3d17d732602b2d9"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.2.1/atradio-v0.2.1-macos-aarch64.tar.gz"
    sha256 "6b96d78f86bb2fde84e18d0eccd34b81de0c2bc7df4ccf93b95cc91af1c260cc"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.2.1/atradio-v0.2.1-linux-amd64.tar.gz"
    sha256 "89936ddc1e8d8bd8cdea35c36486132bbd39cf4fb0d92f6b8f604298b4dc63ea"
  end

  def install
    bin.install "atradio"
  end
end
