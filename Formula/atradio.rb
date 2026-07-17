class Atradio < Formula
  desc "A TUI radio player on the AT Protocol"
  homepage "https://github.com/tsirysndr/atradio.fm"
  url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.2.0/atradio-v0.2.0-macos-aarch64.tar.gz"
  sha256 "a9b707d5337d412ff8956f4677486f88a0e1cd1199c1dcf0b28b3aef7b96e69a"
  version "0.2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.2.0/atradio-v0.2.0-macos-amd64.tar.gz"
    sha256 "1ff2214b4b317fedc2e42877a9dbd75419965031841cc3474bfc611f7327f512"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.2.0/atradio-v0.2.0-macos-aarch64.tar.gz"
    sha256 "a9b707d5337d412ff8956f4677486f88a0e1cd1199c1dcf0b28b3aef7b96e69a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.2.0/atradio-v0.2.0-linux-amd64.tar.gz"
    sha256 "2c17fb900458e82df5e5ca93f18bea0966715affca837426215e45711f97cc2e"
  end

  def install
    bin.install "atradio"
  end
end
