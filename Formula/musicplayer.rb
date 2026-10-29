class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.4.7/music-player_v0.4.7_aarch64-apple-darwin.tar.gz"
  sha256 "89b9ef147f5281f481f72a35c3067ebcd0f61f0bc39c1c2764340800e30829de"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.7/music-player_v0.4.7_x86_64-apple-darwin.tar.gz"
    sha256 "1c9ec5d47ddb93bebc334a698bd009831c4ceae0dce09d90e46a24830345b958"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.7/music-player_v0.4.7_aarch64-apple-darwin.tar.gz"
    sha256 "89b9ef147f5281f481f72a35c3067ebcd0f61f0bc39c1c2764340800e30829de"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.7/music-player_v0.4.7_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dd5c8442150366b1c80fdca13557d7b73cae54604a3ebd95833f13c829ee2947"
  end

  def install
    bin.install "music-player"
  end
end
