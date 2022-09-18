class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.1.2-alpha/music-player_v0.1.2-alpha_x86_64-apple-darwin.tar.gz"
  sha256 "fc842f6c1f3d65af5b9e35ef70bd82ed149be80d9f893da9700f0a3d8c340a49"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.1.2-alpha/music-player_v0.1.2-alpha_x86_64-apple-darwin.tar.gz"
    sha256 "fc842f6c1f3d65af5b9e35ef70bd82ed149be80d9f893da9700f0a3d8c340a49"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.1.2-alpha/music-player_v0.1.2-alpha_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "339fa2d14cc315440a4aafc8e66472991992fe0808edf0a2624143c8ca47f8f2"
  end

  def install
    bin.install "music-player"
  end
end
