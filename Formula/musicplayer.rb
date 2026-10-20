class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.4.5/music-player_v0.4.5_aarch64-apple-darwin.tar.gz"
  sha256 "503fc79ea9b0cb07ef8951c2154e1c86f79332026fecb6a3e22bd269357e8c41"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.5/music-player_v0.4.5_x86_64-apple-darwin.tar.gz"
    sha256 "235688ea696bd39665981b5bc9479db92602c2dc3c01ac00deb5fe4c3a943f53"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.5/music-player_v0.4.5_aarch64-apple-darwin.tar.gz"
    sha256 "503fc79ea9b0cb07ef8951c2154e1c86f79332026fecb6a3e22bd269357e8c41"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.5/music-player_v0.4.5_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "aa07c7b1f09f431d512c1b467c98821c80ba90564001b8bc9b9750ca6683c06e"
  end

  def install
    bin.install "music-player"
  end
end
