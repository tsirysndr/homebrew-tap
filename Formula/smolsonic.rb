class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.8.1/smolsonic-v0.8.1-macos-aarch64.tar.gz"
  sha256 "956b6a983b7ec9124903b2d5470f446e85155fe92d12d97b100d587f60cf7872"
  version "0.8.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.8.1/smolsonic-v0.8.1-macos-amd64.tar.gz"
    sha256 "cef1e080e086c19629bba85bbbcc3ff9898e79dd14ae4346cc8e0275196bbd7c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.8.1/smolsonic-v0.8.1-macos-aarch64.tar.gz"
    sha256 "956b6a983b7ec9124903b2d5470f446e85155fe92d12d97b100d587f60cf7872"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.8.1/smolsonic-v0.8.1-linux-amd64.tar.gz"
    sha256 "9993d9000d414fca33205fd6e24e6abd7962a21d15208260ab7059dbd07e4f6a"
  end

  def install
    bin.install "smolsonic"
  end
end
