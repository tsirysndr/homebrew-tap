class Hlsd < Formula
  desc "Serve live HLS (and optional MPEG-DASH) from a raw PCM s16le audio stream"
  homepage "https://github.com/tsirysndr/hlsd"
  url "https://github.com/tsirysndr/hlsd/releases/download/v0.2.0/hlsd-v0.2.0-darwin-arm64.tar.gz"
  sha256 "5f4dfdece174549a24060fbc7a9fd3c2b7a49168a86b0ffa6e94a702fdb58613"
  version "0.2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/hlsd/releases/download/v0.2.0/hlsd-v0.2.0-darwin-amd64.tar.gz"
    sha256 "4c67bee1d2ff3e224365cf6c3d1045c1c87182756a9ae19eeeb3421de88e1043"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/hlsd/releases/download/v0.2.0/hlsd-v0.2.0-darwin-arm64.tar.gz"
    sha256 "5f4dfdece174549a24060fbc7a9fd3c2b7a49168a86b0ffa6e94a702fdb58613"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/hlsd/releases/download/v0.2.0/hlsd-v0.2.0-linux-amd64.tar.gz"
    sha256 "4e270a1dfe18454f05fc7b2eae580d93e9b389270a6afaa25471fcf4372d715c"
  end

  def install
    bin.install "hlsd"
  end
end
