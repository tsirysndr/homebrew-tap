class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.5/music-player_v0.2.0-alpha.5_x86_64-apple-darwin.tar.gz"
  sha256 "eaeff8d278f332668efc4f480e168032a38ce211e0c199b7f8ab94f1e177460d"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.5/music-player_v0.2.0-alpha.5_x86_64-apple-darwin.tar.gz"
    sha256 "eaeff8d278f332668efc4f480e168032a38ce211e0c199b7f8ab94f1e177460d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.5/music-player_v0.2.0-alpha.5_aarch64-apple-darwin.tar.gz"
    sha256 "7645ff1b68e600c823da28db4bf583d02efea246829b1d13d5a2f4774a65bd2a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.5/music-player_v0.2.0-alpha.5_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "84ccef665e3acd62779eb0eb06a7abf70a63e7ad4cd7f781c9fd66d87ee0b868"
  end

  def install
    bin.install "music-player"
  end
end
