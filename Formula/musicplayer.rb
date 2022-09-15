class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.1.0-alpha/music-player_v0.1.0-alpha_x86_64-apple-darwin.tar.gz"
  sha256 "3e38424a70fdb475f0b3f5275f4ee3dfaf1113f9a177a5cadebbd59470dce07a"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.1.0-alpha/music-player_v0.1.0-alpha_x86_64-apple-darwin.tar.gz"
    sha256 "3e38424a70fdb475f0b3f5275f4ee3dfaf1113f9a177a5cadebbd59470dce07a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.1.0-alpha/music-player_v0.1.0-alpha_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c6cd506e2294d16759879c7a74543d9bcd0cde313233b98e9cc452993d254bde"
  end

  def install
    bin.install "music-player"
  end
end
