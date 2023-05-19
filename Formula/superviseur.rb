class Superviseur < Formula
  desc "Define and run multi-service applications on isolated environments with Nix or Docker"
  homepage "https://github.com/tsirysndr/superviseur"
  url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.12/superviseur_v0.1.0-alpha.12_x86_64-apple-darwin.tar.gz"
  sha256 "3e9d33f56faa3068b51b2f9fc4f2c20867ca49703d436259df3470cec5e0f0e1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.12/superviseur_v0.1.0-alpha.12_x86_64-apple-darwin.tar.gz"
    sha256 "3e9d33f56faa3068b51b2f9fc4f2c20867ca49703d436259df3470cec5e0f0e1"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.12/superviseur_v0.1.0-alpha.12_aarch64-apple-darwin.tar.gz"
    sha256 "1301cc43ca06345a5c7d4456c95632964f85bf9d10f89d35be6d7331fc4fe197"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.12/superviseur_v0.1.0-alpha.12_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ec1b37c1e191d68d814841303fd88fc083e8b61c13674bfb79e5e26495c7b44c"
  end

  def install
    bin.install "superviseur"
  end
end
