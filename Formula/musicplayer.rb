class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.4.1/music-player_v0.4.1_aarch64-apple-darwin.tar.gz"
  sha256 "c057d212434c5b9a0d5f81c22d28ff88ff9b25aaebc99ea55ff34385c2e9944d"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.1/music-player_v0.4.1_x86_64-apple-darwin.tar.gz"
    sha256 "1854173a806724b4653573e117b9318b75b3998acfc261de2b2152b1922692cb"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.1/music-player_v0.4.1_aarch64-apple-darwin.tar.gz"
    sha256 "c057d212434c5b9a0d5f81c22d28ff88ff9b25aaebc99ea55ff34385c2e9944d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.1/music-player_v0.4.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "347b457d3ad99bc748edcfadf149f62084e72428680d127f466ea58cbd83c94b"
  end

  def install
    bin.install "music-player"
  end
end
