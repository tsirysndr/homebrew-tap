class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.4.3/music-player_v0.4.3_aarch64-apple-darwin.tar.gz"
  sha256 "8dc50e625d5752a48f5fc3ede4490c4ed16af1458c94130e64081fe8386c1db0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.3/music-player_v0.4.3_x86_64-apple-darwin.tar.gz"
    sha256 "bf32821aa8ede1e31e6af4b04f937590734212b0f5a713470b8857a1dd4fb723"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.3/music-player_v0.4.3_aarch64-apple-darwin.tar.gz"
    sha256 "8dc50e625d5752a48f5fc3ede4490c4ed16af1458c94130e64081fe8386c1db0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.3/music-player_v0.4.3_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "caecf401b5d96be482aec4908a88447f51d3e720ef5db886e5b909bafed6671b"
  end

  def install
    bin.install "music-player"
  end
end
