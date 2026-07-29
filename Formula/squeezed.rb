class Squeezed < Formula
  desc "Serve a raw PCM audio stream to any Squeezelite / Squeezebox client over the SlimProto protocol."
  homepage "https://github.com/tsirysndr/squeezed"
  url "https://github.com/tsirysndr/squeezed/releases/download/v0.1.0/squeezed-v0.1.0-darwin-arm64.tar.gz"
  sha256 "c48bb01eba706f03f9bedc316f87cdd9c328a8e3a589526e2e587765d24ece69"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/squeezed/releases/download/v0.1.0/squeezed-v0.1.0-darwin-amd64.tar.gz"
    sha256 "3e6a420f1626ffb307e17566f35310825db5c8a8434d1c939f316a8b10a15e45"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/squeezed/releases/download/v0.1.0/squeezed-v0.1.0-darwin-arm64.tar.gz"
    sha256 "c48bb01eba706f03f9bedc316f87cdd9c328a8e3a589526e2e587765d24ece69"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/squeezed/releases/download/v0.1.0/squeezed-v0.1.0-linux-amd64.tar.gz"
    sha256 "e492052fb96300eddaf5ce7a6f1ea4c0142c23f15a83f5f73e831fa98db0e15c"
  end

  def install
    bin.install "squeezed"
  end
end
