class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.4.6/music-player_v0.4.6_aarch64-apple-darwin.tar.gz"
  sha256 "fff78d071223ba51fa1e1c4be37b613ee6e5ec0ae03638f08fd7f0efaf5039cb"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.6/music-player_v0.4.6_x86_64-apple-darwin.tar.gz"
    sha256 "f4b39221276c4390a662ff4f97db5048f42123a17f974094a3752e8eb3b7e15d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.6/music-player_v0.4.6_aarch64-apple-darwin.tar.gz"
    sha256 "fff78d071223ba51fa1e1c4be37b613ee6e5ec0ae03638f08fd7f0efaf5039cb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.6/music-player_v0.4.6_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "05976e69c525a184a2f75a5873cb4a4e2647e3c8d3f13b6270a30506445a81da"
  end

  def install
    bin.install "music-player"
  end
end
