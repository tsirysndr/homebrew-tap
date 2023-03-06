class Superviseur < Formula
  desc "A simple process supervisor for UNIX-like systems."
  homepage "https://github.com/tsirysndr/superviseur"
  url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.2/superviseur_v0.1.0-alpha.2_x86_64-apple-darwin.tar.gz"
  sha256 "d49d4839b85de6b2584eb5e56db77a85313b6408cc95b692a31463b718ebbbe9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.2/superviseur_v0.1.0-alpha.2_x86_64-apple-darwin.tar.gz"
    sha256 "d49d4839b85de6b2584eb5e56db77a85313b6408cc95b692a31463b718ebbbe9"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.2/superviseur_v0.1.0-alpha.2_aarch64-apple-darwin.tar.gz"
    sha256 "59f9f0216e2a7af03324d044aea4a64c2169f82aad1be9f2a8c8536b9833c009"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/superviseur/releases/download/v0.1.0-alpha.2/superviseur_v0.1.0-alpha.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "238bcd16e9db5ed181f80fbf31a723b6ff42fef81c5b8e94424b73e884775c17"
  end

  def install
    bin.install "superviseur"
  end
end
