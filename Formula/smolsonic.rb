class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.5.0/smolsonic-v0.5.0-macos-aarch64.tar.gz"
  sha256 "8830367d6a44ff1eb4fd749804367281b99e59af0a586facd98450bdf15b8f10"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.5.0/smolsonic-v0.5.0-macos-amd64.tar.gz"
    sha256 "8b657c1e9268fb17282337b642d0f8b84f85aceb8dd2fe1b504709af89f95030"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.5.0/smolsonic-v0.5.0-macos-aarch64.tar.gz"
    sha256 "8830367d6a44ff1eb4fd749804367281b99e59af0a586facd98450bdf15b8f10"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.5.0/smolsonic-v0.5.0-linux-amd64.tar.gz"
    sha256 "a523ca2ceb8be1ab3435416099c5459d5e3a7a7422cf58f830004f42098ef5b0"
  end

  def install
    bin.install "smolsonic"
  end
end
