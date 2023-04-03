class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.12/music-player_v0.2.0-alpha.12_x86_64-apple-darwin.tar.gz"
  sha256 "d3c405a8dbc2b1890d1de9b723a315d0adecedc75d993d623935fca058a77bff"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.12/music-player_v0.2.0-alpha.12_x86_64-apple-darwin.tar.gz"
    sha256 "d3c405a8dbc2b1890d1de9b723a315d0adecedc75d993d623935fca058a77bff"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.12/music-player_v0.2.0-alpha.12_aarch64-apple-darwin.tar.gz"
    sha256 "f2ff0115a001db28df99f4825af6a3bd3d74c6d598f465a003d5f1a031a99813"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.12/music-player_v0.2.0-alpha.12_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2c4c1eec31ed53fc6e9ec6e598f89173fc2d1adaf323b9c1f77be5be3e9cee6f"
  end

  def install
    bin.install "music-player"
  end
end
