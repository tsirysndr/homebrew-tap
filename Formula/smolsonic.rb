class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.1.0/smolsonic-v0.1.0-macos-aarch64.tar.gz"
  sha256 "5cb491048a278f140582456b32792180c6cfefc02324e14ae576f101befb5a1d"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.1.0/smolsonic-v0.1.0-macos-amd64.tar.gz"
    sha256 "1a23e785e93234fad0f04e04b5ce2604221c353dbe7e51e46b01c9fbae69879e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.1.0/smolsonic-v0.1.0-macos-aarch64.tar.gz"
    sha256 "5cb491048a278f140582456b32792180c6cfefc02324e14ae576f101befb5a1d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.1.0/smolsonic-v0.1.0-linux-amd64.tar.gz"
    sha256 "7e0f5ddc5f8648411210fa6a50b1bcc9a61b518a8a4ee114f31a86a61b5f4694"
  end

  def install
    bin.install "smolsonic"
  end
end
