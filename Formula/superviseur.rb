class Superviseur < Formula
  desc "A simple process supervisor for UNIX-like systems."
  homepage "https://github.com/tsirysndr/superviseur"
  url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.1/superviseur_v0.1.0-alpha.1_x86_64-apple-darwin.tar.gz"
  sha256 "3721b1f1bcb285aaaac5e7f01b0a6ef728c20e4b18f79249f0f0308f4fe8ebc1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.1/superviseur_v0.1.0-alpha.1_x86_64-apple-darwin.tar.gz"
    sha256 "3721b1f1bcb285aaaac5e7f01b0a6ef728c20e4b18f79249f0f0308f4fe8ebc1"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.1/superviseur_v0.1.0-alpha.1_aarch64-apple-darwin.tar.gz"
    sha256 "8f3396142335efaa3fb8c355fb0425f0ab7f7d40e61ea2bc2bbe717d99bfab7f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.1/superviseur_v0.1.0-alpha.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ad7fee12daf461c4684d26f217588521e3be7d6f26cc3716ff148359d94ceebf"
  end

  def install
    bin.install "superviseur"
  end
end
