class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.5.3/smolsonic-v0.5.3-macos-aarch64.tar.gz"
  sha256 "ba0e22bc81de693ff22c92932e32c151c76364977757a51a278257c03c215deb"
  version "0.5.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.5.3/smolsonic-v0.5.3-macos-amd64.tar.gz"
    sha256 "83a58cfe47d30edeaadeb387d25ff49f102a6573b0f1f30ad2fe8be4e3f3707a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.5.3/smolsonic-v0.5.3-macos-aarch64.tar.gz"
    sha256 "ba0e22bc81de693ff22c92932e32c151c76364977757a51a278257c03c215deb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.5.3/smolsonic-v0.5.3-linux-amd64.tar.gz"
    sha256 "228e9cc1cf4fe426ad30f61a79c32e85f87bbf756bd17be1e81f05279e52a160"
  end

  def install
    bin.install "smolsonic"
  end
end
