class Cvisor < Formula
  desc "Embedded bash sandbox for agents, inspired by gVisor"
  homepage "https://github.com/tsirysndr/cvisor"
  url "https://github.com/tsirysndr/cVisor/releases/download/v0.1.1/cvisor-darwin-aarch64.tar.gz"
  sha256 "59ea961fbccef0fe77477ed7db97d7c08a97c4af654bdaeb85e20ee616872ef8"
  version "0.1.1"


  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/cVisor/releases/download/v0.1.1/cvisor-darwin-aarch64.tar.gz"
    sha256 "59ea961fbccef0fe77477ed7db97d7c08a97c4af654bdaeb85e20ee616872ef8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/cVisor/releases/download/v0.1.1/cvisor-linux-x86_64.tar.gz"
    sha256 "8351df7af17a5563d79469b455924f22a810a59a6d4402c19e0659bcdf066b6a"
  end

  def install
    bin.install "cvisor"
  end
end
