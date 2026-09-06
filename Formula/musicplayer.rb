class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0/music-player_v0.2.0_aarch64-apple-darwin.tar.gz"
  sha256 "d399479754eaae6808afbcbbc37d536a7ac619441c97090b78bf0dd82486342b"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0/music-player_v0.2.0_x86_64-apple-darwin.tar.gz"
    sha256 "cef585fc1d3679a6c78dd9802527dd552e8e32cbf6a20f0e896cd102aacac361"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0/music-player_v0.2.0_aarch64-apple-darwin.tar.gz"
    sha256 "d399479754eaae6808afbcbbc37d536a7ac619441c97090b78bf0dd82486342b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0/music-player_v0.2.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5449b3f6fe773f8caaa50ea3bad6eaec8b5a2fbde85fd2893d01364ec062ec1e"
  end

  def install
    bin.install "music-player"
  end
end
