class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.0/music-player_v0.2.0-alpha.0_x86_64-apple-darwin.tar.gz"
  sha256 "d28010ac2b982a58ee034a008f4d7f947745041cad382b3e27dc23a1586eba40"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.0/music-player_v0.2.0-alpha.0_x86_64-apple-darwin.tar.gz"
    sha256 "d28010ac2b982a58ee034a008f4d7f947745041cad382b3e27dc23a1586eba40"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.0/music-player_v0.2.0-alpha.0_aarch64-apple-darwin.tar.gz"
    sha256 "c4d483e5677e74a5a8223dfb0a9c03be84baf1dd8d6a697457354148349126ce"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.0/music-player_v0.2.0-alpha.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a4d26b3d0ee82c5c4c9d51c65a746cd50579eded34aa450459809b7f6424caf"
  end

  def install
    bin.install "music-player"
  end
end
