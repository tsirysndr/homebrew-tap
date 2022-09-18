class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.1.3-alpha/music-player_v0.1.3-alpha_x86_64-apple-darwin.tar.gz"
  sha256 "00383eaf994aac99fd32e0e0f57751e6bf3452abad4bbd439f7b6ab823d49088"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.1.3-alpha/music-player_v0.1.3-alpha_x86_64-apple-darwin.tar.gz"
    sha256 "00383eaf994aac99fd32e0e0f57751e6bf3452abad4bbd439f7b6ab823d49088"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.1.3-alpha/music-player_v0.1.3-alpha_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5a506cf48f4eb04bbe994916d359afb41fcda9b19efcc5d14994878e7fd0d120"
  end

  def install
    bin.install "music-player"
  end
end
