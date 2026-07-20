class Atradio < Formula
  desc "A TUI radio player on the AT Protocol"
  homepage "https://github.com/tsirysndr/atradio.fm"
  url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.5.3/atradio-v0.5.3-macos-aarch64.tar.gz"
  sha256 "3993493cff25c069e1ded97a3793771809fe807091f177b046fbcd40788f59ed"
  version "0.5.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.5.3/atradio-v0.5.3-macos-amd64.tar.gz"
    sha256 "9375901c98bc2e03d6c43beaf28c5721675905b7333f6390a61412042309856c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.5.3/atradio-v0.5.3-macos-aarch64.tar.gz"
    sha256 "3993493cff25c069e1ded97a3793771809fe807091f177b046fbcd40788f59ed"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.5.3/atradio-v0.5.3-linux-amd64.tar.gz"
    sha256 "70f196653fcb6ff0d5c2da9ef341512665e73b220a534e4d36f12e1be87ca2aa"
  end

  def install
    bin.install "atradio"
  end
end
