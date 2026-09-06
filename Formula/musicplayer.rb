class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.2.1/music-player_v0.2.1_aarch64-apple-darwin.tar.gz"
  sha256 "4d2cddc813a63845e30dfe9ff8facef75215a82e88f43962d4b1b84c2021e882"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.1/music-player_v0.2.1_x86_64-apple-darwin.tar.gz"
    sha256 "03ec32fe293bafbd5c92a447b9a56cdbee70ac667edffc9f8e2bc6af51fa57dc"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.1/music-player_v0.2.1_aarch64-apple-darwin.tar.gz"
    sha256 "4d2cddc813a63845e30dfe9ff8facef75215a82e88f43962d4b1b84c2021e882"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.1/music-player_v0.2.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ab9647b1cb04aea9aed830bf899304bd8289f2d0c7a776662392afca4c7a26bd"
  end

  def install
    bin.install "music-player"
  end
end
