class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.1.6-alpha/music-player_v0.1.6-alpha_x86_64-apple-darwin.tar.gz"
  sha256 "1de7c141d4b1d981ea675e535d74be71d62feba2d65557a6bcec4ccb2677185c"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.1.6-alpha/music-player_v0.1.6-alpha_x86_64-apple-darwin.tar.gz"
    sha256 "1de7c141d4b1d981ea675e535d74be71d62feba2d65557a6bcec4ccb2677185c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.1.6-alpha/music-player_v0.1.6-alpha_aarch64-apple-darwin.tar.gz"
    sha256 "b3183c16b16a2d30079d2af02f4de5481256345424d7cbaba65f1e1181ea2e84"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.1.6-alpha/music-player_v0.1.6-alpha_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2cd0204287850d8d6845c14773ce776fdbce5542ae4e980583116ada1831944a"
  end

  def install
    bin.install "music-player"
  end
end
