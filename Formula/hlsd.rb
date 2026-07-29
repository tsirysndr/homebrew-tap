class Hlsd < Formula
  desc "Serve live HLS (and optional MPEG-DASH) from a raw PCM s16le audio stream"
  homepage "https://github.com/tsirysndr/hlsd"
  url "https://github.com/tsirysndr/hlsd/releases/download/v0.1.0/hlsd-v0.1.0-darwin-arm64.tar.gz"
  sha256 "e7912c89472b1e298edd525d02f4338e1ebe92ec6f32d09f9f553177df562695"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/hlsd/releases/download/v0.1.0/hlsd-v0.1.0-darwin-amd64.tar.gz"
    sha256 "dac3e4ed97c61bca9e395a1732650331790c8e66444b8dd0ccf5982e8765862f"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/hlsd/releases/download/v0.1.0/hlsd-v0.1.0-darwin-arm64.tar.gz"
    sha256 "e7912c89472b1e298edd525d02f4338e1ebe92ec6f32d09f9f553177df562695"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/hlsd/releases/download/v0.1.0/hlsd-v0.1.0-linux-amd64.tar.gz"
    sha256 "9bcf50dbf9f40091841d942b82fe18983e8d30e56763aa7658951f435ca7b3ac"
  end

  def install
    bin.install "hlsd"
  end
end
