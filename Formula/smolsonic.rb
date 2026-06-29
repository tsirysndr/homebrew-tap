class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.6.2/smolsonic-v0.6.2-macos-aarch64.tar.gz"
  sha256 "9c43487341c2def9cff395027e872f71cf40457de43e729591a0ff2a3272f34d"
  version "0.6.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.6.2/smolsonic-v0.6.2-macos-amd64.tar.gz"
    sha256 "d42c20ed50c9bb3e195d1d04932e9521e5a51db25c1242d85b959314c1c1d3c9"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.6.2/smolsonic-v0.6.2-macos-aarch64.tar.gz"
    sha256 "9c43487341c2def9cff395027e872f71cf40457de43e729591a0ff2a3272f34d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.6.2/smolsonic-v0.6.2-linux-amd64.tar.gz"
    sha256 "c8bc6d6dbda26231c66c3d8164c21480cc23a84c08b89071f229a5260ab28d73"
  end

  def install
    bin.install "smolsonic"
  end
end
