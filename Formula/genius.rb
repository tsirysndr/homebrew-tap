class Genius < Formula
  desc "Search lyrics or song metadata from your terminal"
  homepage "https://github.com/tsirysndr/genius-cli"
  url "https://github.com/tsirysndr/genius-cli/releases/download/v0.1.2/genius_v0.1.2_x86_64-apple-darwin.tar.gz"
  sha256 "ac219d3d3a82d4c1e082b6c8b1c6211546a21870715fbf9427be3e7c458e26ac"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/genius-cli/releases/download/v0.1.2/genius_v0.1.2_x86_64-apple-darwin.tar.gz"
    sha256 "ac219d3d3a82d4c1e082b6c8b1c6211546a21870715fbf9427be3e7c458e26ac"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/genius-cli/releases/download/v0.1.2/genius_v0.1.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f6ac13c57cca17b76f1dabcd1ce67ccef29534d9427e6e1114e0af43b2b41098"
  end

  def install
    bin.install "genius"
  end
end
