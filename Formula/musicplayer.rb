class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.1.5-alpha/music-player_v0.1.5-alpha_x86_64-apple-darwin.tar.gz"
  sha256 "64cbd10f6c8d77a5f073d16a2a789127acc65f11b84808fe46cdbd6717634457"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.1.5-alpha/music-player_v0.1.5-alpha_x86_64-apple-darwin.tar.gz"
    sha256 "64cbd10f6c8d77a5f073d16a2a789127acc65f11b84808fe46cdbd6717634457"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.1.5-alpha/music-player_v0.1.5-alpha_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "10a45be944e49d7aae0af8ad6ec63fd7bd54e68d6b0e7cfaca767b20cee07f34"
  end

  def install
    bin.install "music-player"
  end
end
