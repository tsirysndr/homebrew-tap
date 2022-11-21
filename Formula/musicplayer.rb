class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.4/music-player_v0.2.0-alpha.4_x86_64-apple-darwin.tar.gz"
  sha256 "ee301cf477a456b902d76bc9700c4a99212a9e8e82cbc118d071efadac0314e4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.4/music-player_v0.2.0-alpha.4_x86_64-apple-darwin.tar.gz"
    sha256 "ee301cf477a456b902d76bc9700c4a99212a9e8e82cbc118d071efadac0314e4"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.4/music-player_v0.2.0-alpha.4_aarch64-apple-darwin.tar.gz"
    sha256 "9706a208927b4d49f47bf448744381a152cd3f889c437d3fef968893a83242f0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.4/music-player_v0.2.0-alpha.4_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9b7bd8afab70ddb059f07308d800f5bea8e2ed2f97c23b31d30472b9187ffb17"
  end

  def install
    bin.install "music-player"
  end
end
