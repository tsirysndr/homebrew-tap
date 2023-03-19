class Superviseur < Formula
  desc "A simple process supervisor for UNIX-like systems."
  homepage "https://github.com/tsirysndr/superviseur"
  url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.4/superviseur_v0.1.0-alpha.4_x86_64-apple-darwin.tar.gz"
  sha256 "a93d4cb6ed05725e4d07ed2faaf4d136abaec80ac56612f2105e58225b4597e7"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.4/superviseur_v0.1.0-alpha.4_x86_64-apple-darwin.tar.gz"
    sha256 "a93d4cb6ed05725e4d07ed2faaf4d136abaec80ac56612f2105e58225b4597e7"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.4/superviseur_v0.1.0-alpha.4_aarch64-apple-darwin.tar.gz"
    sha256 "02ad093743d5446a2da7ec19611990b1367bda1525ba040a0a14cd01d83ee0b1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.4/superviseur_v0.1.0-alpha.4_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bf39ac3a29316f6f06ef697f16e535e05870fdf6804ec6988fb93c0c63675123"
  end

  def install
    bin.install "superviseur"
  end
end
