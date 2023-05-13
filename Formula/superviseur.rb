class Superviseur < Formula
  desc "Define and run multi-service applications on isolated environments with Nix or Docker"
  homepage "https://github.com/tsirysndr/superviseur"
  url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.8/superviseur_v0.1.0-alpha.8_x86_64-apple-darwin.tar.gz"
  sha256 "f7fce97465794559f91a11eb1f5a91fa08d7b0405d52d351abb5c7d11c926c1a"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.8/superviseur_v0.1.0-alpha.8_x86_64-apple-darwin.tar.gz"
    sha256 "f7fce97465794559f91a11eb1f5a91fa08d7b0405d52d351abb5c7d11c926c1a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.8/superviseur_v0.1.0-alpha.8_aarch64-apple-darwin.tar.gz"
    sha256 "dfe8d3a74effcbc1fdddec2d98926ade1f2c881680beffaff2893415401a7510"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.8/superviseur_v0.1.0-alpha.8_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e2690769a4128d3f37ce7bf51c68a79a8ef552613c40cba370e13a7421feb0fc"
  end

  def install
    bin.install "superviseur"
  end
end
