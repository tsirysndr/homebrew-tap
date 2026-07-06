class Equalizer < Formula
  desc "Pipe raw PCM through the Rockbox 10-band equalizer to the sound card, with a ratatui front-end"
  homepage "https://github.com/tsirysndr/equalizer"
  url "https://github.com/tsirysndr/equalizer/releases/download/v0.1.0/equalizer-v0.1.0-macos-aarch64.tar.gz"
  sha256 "3cb21c93648deca00a053a2ebcd320831b71add570e75ffdde9eaebaba7cefb2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/equalizer/releases/download/v0.1.0/equalizer-v0.1.0-macos-amd64.tar.gz"
    sha256 "c5ddd48cb0aa61a658d7355408063fe43b03db46cc75a88bd19bc9ec5c41545e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/equalizer/releases/download/v0.1.0/equalizer-v0.1.0-macos-aarch64.tar.gz"
    sha256 "3cb21c93648deca00a053a2ebcd320831b71add570e75ffdde9eaebaba7cefb2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/equalizer/releases/download/v0.1.0/equalizer-v0.1.0-linux-amd64.tar.gz"
    sha256 "788f0233ad36dccbcd69be0869097ae22afe9fa756789b23163b02e29a46f9e5"
  end

  def install
    bin.install "equalizer"
  end
end
