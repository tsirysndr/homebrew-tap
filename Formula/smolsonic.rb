class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.10.1/smolsonic-v0.10.1-macos-aarch64.tar.gz"
  sha256 "a98a2d7e0a2ed86fc7fe4ed62846c2523fb11352eec95f4e77d7f6c1e9f7d67f"
  version "0.10.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.10.1/smolsonic-v0.10.1-macos-amd64.tar.gz"
    sha256 "32090188172e850f9393291f584f4208d26f038dc8c417826120926f25a23686"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.10.1/smolsonic-v0.10.1-macos-aarch64.tar.gz"
    sha256 "a98a2d7e0a2ed86fc7fe4ed62846c2523fb11352eec95f4e77d7f6c1e9f7d67f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.10.1/smolsonic-v0.10.1-linux-amd64.tar.gz"
    sha256 "4cbfbe4f66c77602cccb3b51b568e7e6e9e7b107ebd6cc88a162a07c1db5778c"
  end

  def install
    bin.install "smolsonic"
  end
end
