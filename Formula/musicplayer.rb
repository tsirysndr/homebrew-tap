class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.7/music-player_v0.2.0-alpha.7_x86_64-apple-darwin.tar.gz"
  sha256 "01ccd3f676e8f1073bfd26cdbd51dd4d9c6c6baa18942e7d73367bfff7119126"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.7/music-player_v0.2.0-alpha.7_x86_64-apple-darwin.tar.gz"
    sha256 "01ccd3f676e8f1073bfd26cdbd51dd4d9c6c6baa18942e7d73367bfff7119126"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.7/music-player_v0.2.0-alpha.7_aarch64-apple-darwin.tar.gz"
    sha256 "e78ea69bed947ac8fb66fffa713d036315ae1b086f3bcd35425c829e9f9e08dc"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.7/music-player_v0.2.0-alpha.7_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "63377997ab8af0cb8c2b60b59b42c2c5539fe08cb9f985325fc058730da509dc"
  end

  def install
    bin.install "music-player"
  end
end
