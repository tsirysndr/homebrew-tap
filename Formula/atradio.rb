class Atradio < Formula
  desc "A TUI radio player on the AT Protocol"
  homepage "https://github.com/tsirysndr/atradio.fm"
  url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.4.0/atradio-v0.4.0-macos-aarch64.tar.gz"
  sha256 "ed98a4e20aa45520f1c341920d7de2237ff1599d1faa685f8436752141eff15c"
  version "0.4.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.4.0/atradio-v0.4.0-macos-amd64.tar.gz"
    sha256 "a959bed495b4742af1233315f99f09d6bc65d5341a15768600ce3bb4747bf975"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.4.0/atradio-v0.4.0-macos-aarch64.tar.gz"
    sha256 "ed98a4e20aa45520f1c341920d7de2237ff1599d1faa685f8436752141eff15c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/atradio.fm/releases/download/v0.4.0/atradio-v0.4.0-linux-amd64.tar.gz"
    sha256 "a909ef8606b6cf9efaa03a815ce1893061d532d97c5d85e84c842251899839d2"
  end

  def install
    bin.install "atradio"
  end
end
