class Superviseur < Formula
  desc "Define and run multi-service applications on isolated environments with Nix or Docker"
  homepage "https://github.com/tsirysndr/superviseur"
  url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.10/superviseur_v0.1.0-alpha.10_x86_64-apple-darwin.tar.gz"
  sha256 "78c777f3bfc3806ab2d890eb2f85774a5de97774f5d6f7d69846f2a795d9a010"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.10/superviseur_v0.1.0-alpha.10_x86_64-apple-darwin.tar.gz"
    sha256 "78c777f3bfc3806ab2d890eb2f85774a5de97774f5d6f7d69846f2a795d9a010"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.10/superviseur_v0.1.0-alpha.10_aarch64-apple-darwin.tar.gz"
    sha256 "262bdd3091ac0c73bf8d584c288a8e0aa82b4d186377a63695655e839a80cdc9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.10/superviseur_v0.1.0-alpha.10_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d5f1644abb2014bded089a44116de4ee10f4a86ab294e136e5cd292e4fa11c82"
  end

  def install
    bin.install "superviseur"
  end
end
