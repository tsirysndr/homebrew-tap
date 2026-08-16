class Cvisor < Formula
  desc "Embedded bash sandbox for agents, inspired by gVisor"
  homepage "https://github.com/tsirysndr/cvisor"
  url "https://github.com/tsirysndr/cVisor/releases/download/v0.1.0/cvisor-darwin-aarch64.tar.gz"
  sha256 "4c911f42598475e0a25d232d6a203503d4eacb3c967c9d341d5b804b2f100ed8"
  version "0.1.0"


  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/cVisor/releases/download/v0.1.0/cvisor-darwin-aarch64.tar.gz"
    sha256 "4c911f42598475e0a25d232d6a203503d4eacb3c967c9d341d5b804b2f100ed8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/cVisor/releases/download/v0.1.0/cvisor-linux-x86_64.tar.gz"
    sha256 "fb3b97b8f2609d18bef5f53f16bd282a5ff72d555b5caabe7ce4b90d40505a89"
  end

  def install
    bin.install "cvisor"
  end
end
