class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.6.1/smolsonic-v0.6.1-macos-aarch64.tar.gz"
  sha256 "063422a73eb2dfa7432b5980673463d35e4c53080641970f322afee055c8a6b4"
  version "0.6.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.6.1/smolsonic-v0.6.1-macos-amd64.tar.gz"
    sha256 "0caf4eee7ca5ecd22d53dcc222da12829718bd185ab416a5d205f963377fc37a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.6.1/smolsonic-v0.6.1-macos-aarch64.tar.gz"
    sha256 "063422a73eb2dfa7432b5980673463d35e4c53080641970f322afee055c8a6b4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.6.1/smolsonic-v0.6.1-linux-amd64.tar.gz"
    sha256 "8ebe2e10e8f16e9af1e611e01e207464db5581770ffdce90baf0024f085f1154"
  end

  def install
    bin.install "smolsonic"
  end
end
