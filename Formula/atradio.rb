class Atradio < Formula
  desc "A TUI radio player on the AT Protocol"
  homepage "https://github.com/tsirysndr/atradio.fm"
  url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.2.2/atradio-v0.2.2-macos-aarch64.tar.gz"
  sha256 "4071739321eaab499d61f448476d440e4dc33f2b7d3b667be58220dec2948e24"
  version "0.2.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.2.2/atradio-v0.2.2-macos-amd64.tar.gz"
    sha256 "f8a1957537e96d5e63ba1db99a79c8a80d8ec9ad64511a03e393ea8a482552cb"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.2.2/atradio-v0.2.2-macos-aarch64.tar.gz"
    sha256 "4071739321eaab499d61f448476d440e4dc33f2b7d3b667be58220dec2948e24"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.2.2/atradio-v0.2.2-linux-amd64.tar.gz"
    sha256 "d5667ef048b4bbf28b8942aaed4cb0e91b1e2507ba627f067d7f70a9904810cf"
  end

  def install
    bin.install "atradio"
  end
end
