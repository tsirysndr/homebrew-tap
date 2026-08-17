class Cvisor < Formula
  desc "Embedded bash sandbox for agents, inspired by gVisor"
  homepage "https://github.com/tsirysndr/cvisor"
  url "https://github.com/tsirysndr/cVisor/releases/download/v0.1.2/cvisor-darwin-aarch64.tar.gz"
  sha256 "e431fc4d3ba1decb42f7e5f800495a0d9aaef5094d9a423b7623523e13135405"
  version "0.1.2"


  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/cVisor/releases/download/v0.1.2/cvisor-darwin-aarch64.tar.gz"
    sha256 "e431fc4d3ba1decb42f7e5f800495a0d9aaef5094d9a423b7623523e13135405"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/cVisor/releases/download/v0.1.2/cvisor-linux-x86_64.tar.gz"
    sha256 "19dff8e3524031a36e5be74768cd5d2bafaa873eb8dff41ba67ac634da367e0d"
  end

  def install
    bin.install "cvisor"
  end
end
