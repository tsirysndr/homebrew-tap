class Squeezed < Formula
  desc "Serve a raw PCM audio stream to any Squeezelite / Squeezebox client over the SlimProto protocol."
  homepage "https://github.com/tsirysndr/squeezed"
  url "https://github.com/tsirysndr/squeezed/releases/download/v0.2.1/squeezed-v0.2.1-darwin-arm64.tar.gz"
  sha256 "750862899c07a3ffc2f03cdb8c5a3960eb428da5f852516c9ec7724ebc976d7f"
  version "0.2.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/squeezed/releases/download/v0.2.1/squeezed-v0.2.1-darwin-amd64.tar.gz"
    sha256 "d3143e1380877a88ba9233e6380e48a6e31b82e64c74d7861891c29746463e8a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/squeezed/releases/download/v0.2.1/squeezed-v0.2.1-darwin-arm64.tar.gz"
    sha256 "750862899c07a3ffc2f03cdb8c5a3960eb428da5f852516c9ec7724ebc976d7f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/squeezed/releases/download/v0.2.1/squeezed-v0.2.1-linux-amd64.tar.gz"
    sha256 "2b86528f8ecbd5d055a2ae8caa5e712d0a8b5e7bcc7082d65bb04672e8b24766"
  end

  def install
    bin.install "squeezed"
  end
end
