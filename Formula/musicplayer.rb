class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.1.6-alpha/music-player_v0.1.6-alpha_x86_64-apple-darwin.tar.gz"
  sha256 "e61cda5d6158b2ea7b686d0e0be527d03eec6edc53230455edee19a5ba5d4640"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.1.6-alpha/music-player_v0.1.6-alpha_x86_64-apple-darwin.tar.gz"
    sha256 "e61cda5d6158b2ea7b686d0e0be527d03eec6edc53230455edee19a5ba5d4640"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.1.6-alpha/music-player_v0.1.6-alpha_aarch64-apple-darwin.tar.gz.sha256"
    sha256 "9c7350dc88055a6fd5f151cec500a3297cccb540fcce870742c09f83a4c5c6a0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.1.6-alpha/music-player_v0.1.6-alpha_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "685414ea0b42310cb60472d67831785c6a8fe3664e6815fdceea532480396622"
  end

  def install
    bin.install "music-player"
  end
end
