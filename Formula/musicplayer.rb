class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.4.2/music-player_v0.4.2_aarch64-apple-darwin.tar.gz"
  sha256 "c2f25c3dd084a09f4cab7ffe3822de779e7ef06de9cd4a5db4325d82b6e2b88e"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.2/music-player_v0.4.2_x86_64-apple-darwin.tar.gz"
    sha256 "541e349a40128dcd9f74db5f2019cce6c9a2aa5c2e74411192c2ba7532fd370a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.2/music-player_v0.4.2_aarch64-apple-darwin.tar.gz"
    sha256 "c2f25c3dd084a09f4cab7ffe3822de779e7ef06de9cd4a5db4325d82b6e2b88e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.2/music-player_v0.4.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ebc7daad09f86da9e338bcba645bfdaa8bf753cedcf659acca798c470cbb6d6f"
  end

  def install
    bin.install "music-player"
  end
end
