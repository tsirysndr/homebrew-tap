class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.3.0/smolsonic-v0.3.0-macos-aarch64.tar.gz"
  sha256 "f4cf9f71dee465d72a2fdafab9c3a820e00324adcf9a2685eb2e584ca423d4b3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.3.0/smolsonic-v0.3.0-macos-amd64.tar.gz"
    sha256 "d0e0c46539a0adb80ac77495ca7e8cdb3e4f7603cf34f9b32e452d3600aeeb53"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.3.0/smolsonic-v0.3.0-macos-aarch64.tar.gz"
    sha256 "f4cf9f71dee465d72a2fdafab9c3a820e00324adcf9a2685eb2e584ca423d4b3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.3.0/smolsonic-v0.3.0-linux-amd64.tar.gz"
    sha256 "f76e78871d5ad75782ac41d8374d1590b3d411b7becf663e27b429af70a7ef85"
  end

  def install
    bin.install "smolsonic"
  end
end
