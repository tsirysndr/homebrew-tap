class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.5.1/smolsonic-v0.5.1-macos-aarch64.tar.gz"
  sha256 "365c9f6f0d328c7380a453eb36301d14815b745b38f1199454d2010ccb637fa2"
  version "0.5.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.5.1/smolsonic-v0.5.1-macos-amd64.tar.gz"
    sha256 "739c250c38f67b60d8c77665755ecf079a981a090aaf046e9ed3a2f2852590e0"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.5.1/smolsonic-v0.5.1-macos-aarch64.tar.gz"
    sha256 "365c9f6f0d328c7380a453eb36301d14815b745b38f1199454d2010ccb637fa2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.5.1/smolsonic-v0.5.1-linux-amd64.tar.gz"
    sha256 "d5aaa5458b349f9eb68e873d52e286696e62ada3470f53cf9ce0d1ec907b5893"
  end

  def install
    bin.install "smolsonic"
  end
end
