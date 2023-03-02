class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.11/music-player_v0.2.0-alpha.11_x86_64-apple-darwin.tar.gz"
  sha256 "92354fca5214c40ec8bcaac0057e1748dbaaf383f28807fbaa9564180faa4d8"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.11/music-player_v0.2.0-alpha.11_x86_64-apple-darwin.tar.gz"
    sha256 "92354fca5214c40ec8bcaac0057e1748dbaaf383f28807fbaa9564180faa4d8"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.10/music-player_v0.2.0-alpha.10_aarch64-apple-darwin.tar.gz"
    sha256 "baaea9b96e2330771b8acc67fc9ee0e2f22263099a31ca6cded00547ee94fb0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.11/music-player_v0.2.0-alpha.11_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "02625cb81327a91dfe5851a779f566711eda088532b13e27f990f2b6dccf1b90"
  end

  def install
    bin.install "music-player"
  end
end
