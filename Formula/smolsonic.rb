class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.4.0/smolsonic-v0.4.0-macos-aarch64.tar.gz"
  sha256 "4ac82bcd1ac1200e35fa3bf9e68027451b4f87419d6a5cdfc5357c60305e418c"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.4.0/smolsonic-v0.4.0-macos-amd64.tar.gz"
    sha256 "a3a2a47639811ce59e91bea0e4e2238c07a3acff9909b8358887f7987355f78f"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.4.0/smolsonic-v0.4.0-macos-aarch64.tar.gz"
    sha256 "4ac82bcd1ac1200e35fa3bf9e68027451b4f87419d6a5cdfc5357c60305e418c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.4.0/smolsonic-v0.4.0-linux-amd64.tar.gz"
    sha256 "4ca74eaca8c63b62dcf206ce4bd9ec2c9dbc148a08c21dfc7236db0bad00a38c"
  end

  def install
    bin.install "smolsonic"
  end
end
