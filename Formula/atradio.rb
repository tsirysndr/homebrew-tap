class Atradio < Formula
  desc "A TUI radio player on the AT Protocol"
  homepage "https://github.com/tsirysndr/atradio.fm"
  url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.5.1/atradio-v0.5.1-macos-aarch64.tar.gz"
  sha256 "abeecc09f18803c7308af7e68066397f47091a27dc7383268446e753ad59cb54"
  version "0.5.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.5.1/atradio-v0.5.1-macos-amd64.tar.gz"
    sha256 "583d1a40a00e64115b536d3c7cf67d82bbe6fed6d0e10991181ca1319aec7021"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.5.1/atradio-v0.5.1-macos-aarch64.tar.gz"
    sha256 "abeecc09f18803c7308af7e68066397f47091a27dc7383268446e753ad59cb54"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.5.1/atradio-v0.5.1-linux-amd64.tar.gz"
    sha256 "f35b656aa684011368b45ce1446949643e4fb51ad22e15a891bfb73da8641101"
  end

  def install
    bin.install "atradio"
  end
end
