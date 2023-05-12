class Superviseur < Formula
  desc "Define and run multi-service applications on isolated environments with Nix or Docker"
  homepage "https://github.com/tsirysndr/superviseur"
  url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.6/superviseur_v0.1.0-alpha.6_x86_64-apple-darwin.tar.gz"
  sha256 "8876165e1486ba174bd54eb1e0f7f0a509188daeb8be47865f6668bf422c357a"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.6/superviseur_v0.1.0-alpha.6_x86_64-apple-darwin.tar.gz"
    sha256 "8876165e1486ba174bd54eb1e0f7f0a509188daeb8be47865f6668bf422c357a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.6/superviseur_v0.1.0-alpha.6_aarch64-apple-darwin.tar.gz"
    sha256 "d39b22d497c309b14dd219810b87ed145ab01e0503ee665b94c7066b58fd0cab"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.6/superviseur_v0.1.0-alpha.6_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b39b1f4660188b569180348e3ba3474944504d2aa6ebe485b244c817c4044853"
  end

  def install
    bin.install "superviseur"
  end
end
