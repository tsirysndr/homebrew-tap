class Squeezed < Formula
  desc "Serve a raw PCM audio stream to any Squeezelite / Squeezebox client over the SlimProto protocol."
  homepage "https://github.com/tsirysndr/squeezed"
  url "https://github.com/tsirysndr/squeezed/releases/download/v0.2.0/squeezed-v0.2.0-darwin-arm64.tar.gz"
  sha256 "293628e9ad0a0e6caa5df29a44abf3c2fc691bf77e2e8717be052a5aee4f2f7d"
  version "0.2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/squeezed/releases/download/v0.2.0/squeezed-v0.2.0-darwin-amd64.tar.gz"
    sha256 "d48374fea5468189a0fdc7961cded4a41ea442dbf5455f821c21b7afca209e7e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/squeezed/releases/download/v0.2.0/squeezed-v0.2.0-darwin-arm64.tar.gz"
    sha256 "293628e9ad0a0e6caa5df29a44abf3c2fc691bf77e2e8717be052a5aee4f2f7d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/squeezed/releases/download/v0.2.0/squeezed-v0.2.0-linux-amd64.tar.gz"
    sha256 "900e0fd6fd53710ab18b0728991581bec3bafc7e16761fa20501e5d7a3ee609f"
  end

  def install
    bin.install "squeezed"
  end
end
