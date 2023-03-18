class Superviseur < Formula
  desc "A simple process supervisor for UNIX-like systems."
  homepage "https://github.com/tsirysndr/superviseur"
  url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.3/superviseur_v0.1.0-alpha.3_x86_64-apple-darwin.tar.gz"
  sha256 "39dda6414846e07b862cad501c6960ec2f47571157a010f4d4aa23ce8be56b8a"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.3/superviseur_v0.1.0-alpha.3_x86_64-apple-darwin.tar.gz"
    sha256 "39dda6414846e07b862cad501c6960ec2f47571157a010f4d4aa23ce8be56b8a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.3/superviseur_v0.1.0-alpha.3_aarch64-apple-darwin.tar.gz"
    sha256 "527c41c086ffc40b0c443487db141a814c618aa57ef53bb8dcb4faaaa06083cb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.3/superviseur_v0.1.0-alpha.3_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c91feaf1cdb7550df59c97d956af16be56068305b77890beddbf4fc34858752"
  end

  def install
    bin.install "superviseur"
  end
end
