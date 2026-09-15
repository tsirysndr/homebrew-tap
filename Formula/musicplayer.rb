class Musicplayer < Formula
  desc "An extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  url "https://github.com/tsirysndr/music-player/releases/download/v0.4.4/music-player_v0.4.4_aarch64-apple-darwin.tar.gz"
  sha256 "5e7bf5b944909116acc523b8e1ebd52be792ffa9b381197fbba3246529000ef3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.4/music-player_v0.4.4_x86_64-apple-darwin.tar.gz"
    sha256 "29c92d1c800070697e2022f94764bb6cec3b6a15c0c59880fa97280dffd77a58"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.4/music-player_v0.4.4_aarch64-apple-darwin.tar.gz"
    sha256 "5e7bf5b944909116acc523b8e1ebd52be792ffa9b381197fbba3246529000ef3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.4.4/music-player_v0.4.4_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "16cf22de3afecfd67003e5db195c439c6d253bcd66283e5e15d1e3fee7f8d784"
  end

  def install
    bin.install "music-player"
  end
end
