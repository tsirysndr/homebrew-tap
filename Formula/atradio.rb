class Atradio < Formula
  desc "A TUI radio player on the AT Protocol"
  homepage "https://github.com/tsirysndr/atradio.fm"
  url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.3.0/atradio-v0.3.0-macos-aarch64.tar.gz"
  sha256 "8ea2c148a6adac38cddb88e8ccb38e4f589fcb6783e0aff8f41d55f260ccef0f"
  version "0.3.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.3.0/atradio-v0.3.0-macos-amd64.tar.gz"
    sha256 "f42e58eb12a586903cf4941d06e64c4d88bfcee6d1bcd84083a46dc26b2f25e3"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.3.0/atradio-v0.3.0-macos-aarch64.tar.gz"
    sha256 "8ea2c148a6adac38cddb88e8ccb38e4f589fcb6783e0aff8f41d55f260ccef0f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.3.0/atradio-v0.3.0-linux-amd64.tar.gz"
    sha256 "5e2516fbb0d03e464f4becda845b3bc031af26fbf3e68f6e8d26a83fd64ebed5"
  end

  def install
    bin.install "atradio"
  end
end
