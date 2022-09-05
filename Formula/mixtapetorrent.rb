class Mixtapetorrent < Formula
  desc "This is a command-line for mixtapetorrent.com"
  homepage "https://github.com/tsirysndr/mixtapetorrent"
  url "https://github.com/tsirysndr/mixtapetorrent/releases/download/v0.1.0/mixtapetorrent_v0.1.0_x86_64-apple-darwin.tar.gz"
  sha256 "4b3c3bb5abb49980ab85b658a6635f4722c283fbdf50034ede8a1b7e3da5bea0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/mixtapetorrent/releases/download/v0.1.0/mixtapetorrent_v0.1.0_x86_64-apple-darwin.tar.gz"
    sha256 "4b3c3bb5abb49980ab85b658a6635f4722c283fbdf50034ede8a1b7e3da5bea0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/mixtapetorrent/releases/download/v0.1.0/mixtapetorrent_v0.1.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7f82bfb3ee7d4ed9cd11173cb69955d09655f17414090363fb89d402b57258ec"
  end

  def install
    bin.install "mixtapetorrent"
  end
end
