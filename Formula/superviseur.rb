class Superviseur < Formula
  desc "A simple process supervisor for UNIX-like systems."
  homepage "https://github.com/tsirysndr/superviseur"
  url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.5/superviseur_v0.1.0-alpha.5_x86_64-apple-darwin.tar.gz"
  sha256 "6f8575185e539473a046a398f92e820dfafce6f03c7cb148c68ad7229027e31e"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.5/superviseur_v0.1.0-alpha.5_x86_64-apple-darwin.tar.gz"
    sha256 "6f8575185e539473a046a398f92e820dfafce6f03c7cb148c68ad7229027e31e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.5/superviseur_v0.1.0-alpha.5_aarch64-apple-darwin.tar.gz"
    sha256 "6a558a5723a1e0ca46f6f7c4461244b405fc1056ab1ba1e61ebc332b2d480544"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.5/superviseur_v0.1.0-alpha.5_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "757f8a9f89a5d327cd02b258b10c3411dfee8da748fb71d248e040bdffad94c0"
  end

  def install
    bin.install "superviseur"
  end
end
