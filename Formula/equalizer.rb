class Equalizer < Formula
  desc "Pipe raw PCM through the Rockbox 10-band equalizer to the sound card, with a ratatui front-end"
  homepage "https://github.com/tsirysndr/equalizer"
  url "https://github.com/tsirysndr/equalizer/releases/download/v0.2.0/equalizer-v0.2.0-macos-aarch64.tar.gz"
  sha256 "3495dae7ee9b3bf39acd210f27367933468df1a5c3536b4157c97dd7e59193c3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/equalizer/releases/download/v0.2.0/equalizer-v0.2.0-macos-amd64.tar.gz"
    sha256 "9f6b7371fe0f1e9d313e02ec1d34d15aa05b20caa34b6abf077655811a4c78ea"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/equalizer/releases/download/v0.2.0/equalizer-v0.2.0-macos-aarch64.tar.gz"
    sha256 "3495dae7ee9b3bf39acd210f27367933468df1a5c3536b4157c97dd7e59193c3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/equalizer/releases/download/v0.2.0/equalizer-v0.2.0-linux-amd64.tar.gz"
    sha256 "22976cd2bdf615442eb66bf4f5888e08b2078e8fe635ab54470c527703426dad"
  end

  def install
    bin.install "equalizer"
  end
end
