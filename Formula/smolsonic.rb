class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.9.0/smolsonic-v0.9.0-macos-aarch64.tar.gz"
  sha256 "de648b3d329b82a3d382bbbc719384a683b12daff47065ae6c5936bdf2d21292"
  version "0.9.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.9.0/smolsonic-v0.9.0-macos-amd64.tar.gz"
    sha256 "3a425d1955619676570177b572a7b84ebeb12343aa76f955cc976155c25d2fee"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.9.0/smolsonic-v0.9.0-macos-aarch64.tar.gz"
    sha256 "de648b3d329b82a3d382bbbc719384a683b12daff47065ae6c5936bdf2d21292"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.9.0/smolsonic-v0.9.0-linux-amd64.tar.gz"
    sha256 "cfd01ffd9fae3c875f020ebe265f78505d2ed9e667c53fc131d9d8b57a2d0fbd"
  end

  def install
    bin.install "smolsonic"
  end
end
