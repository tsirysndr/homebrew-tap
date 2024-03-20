class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.2.6/tunein_v0.2.6_aarch64-apple-darwin.tar.gz"
  sha256 "1a9a6a4c6dba6943e54e23c09dda2da8f17de5dfb29cf6fe4730ada0709d451b"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.2.6/tunein_v0.2.6_x86_64-apple-darwin.tar.gz"
    sha256 "26e7c9b1152f0064a4b02fd6a181b2aa1e77ca94bd6a8d915a0f420785e6a96d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.2.6/tunein_v0.2.6_aarch64-apple-darwin.tar.gz"
    sha256 "1a9a6a4c6dba6943e54e23c09dda2da8f17de5dfb29cf6fe4730ada0709d451b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.2.6/tunein_v0.2.6_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "536fb0d66aab9d6305b6ce2e0d588e59c3d486e9a6cb49379d3ad0da05ce8ff5"
  end

  def install
    bin.install "tunein"
  end
end
