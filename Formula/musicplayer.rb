class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.1/music-player_v0.2.0-alpha.1_x86_64-apple-darwin.tar.gz"
  sha256 "0d0a8865006889ccb2c35b0781da7c6259bb7acbffda241f256f59a28840ab40"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.1/music-player_v0.2.0-alpha.1_x86_64-apple-darwin.tar.gz"
    sha256 "0d0a8865006889ccb2c35b0781da7c6259bb7acbffda241f256f59a28840ab40"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.1/music-player_v0.2.0-alpha.1_aarch64-apple-darwin.tar.gz"
    sha256 "c63c5d155fe08f0a9099b9ca4b9026f46993277c55f4592861f6c3a178621e88"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.1/music-player_v0.2.0-alpha.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "89d9b73da7886695bade78692410643fa0bf98508eaf23292e22e1e79e11634c"
  end

  def install
    bin.install "music-player"
  end
end
