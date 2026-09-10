class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.3.0/music-player_v0.3.0_aarch64-apple-darwin.tar.gz"
  sha256 "40087b5d765b3ff29f06448955aed5a29ceca60af2ff0ae70c8e47e2d8cd02d5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.3.0/music-player_v0.3.0_x86_64-apple-darwin.tar.gz"
    sha256 "d81d3bf5f1df8ff3f65b333d9794b5234fa8c7fa215ae5f07bc5b51fb435291d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.3.0/music-player_v0.3.0_aarch64-apple-darwin.tar.gz"
    sha256 "40087b5d765b3ff29f06448955aed5a29ceca60af2ff0ae70c8e47e2d8cd02d5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.3.0/music-player_v0.3.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b22e247b67f5107332437049cd28466fe439a2159bb2f515c8529179c3078695"
  end

  def install
    bin.install "music-player"
  end
end
