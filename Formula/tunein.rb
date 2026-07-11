class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.7.1/tunein_v0.7.1_aarch64-apple-darwin.tar.gz"
  sha256 "351ac04387c082dbcc3c25541f366c305cdef447a64ec5eda9292be487a857fe"
  version "0.7.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.7.1/tunein_v0.7.1_x86_64-apple-darwin.tar.gz"
    sha256 "e8535e4927ac3b32c65e16a23967f67866c6ebae69cf247e7d00ce4d27e3c2e6"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.7.1/tunein_v0.7.1_aarch64-apple-darwin.tar.gz"
    sha256 "351ac04387c082dbcc3c25541f366c305cdef447a64ec5eda9292be487a857fe"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.7.1/tunein_v0.7.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "93352d50c81ebf821d6b82ccc21882f23f951c333ba7f0b54c89a0a0a53121fa"
  end

  def install
    bin.install "tunein"
  end
end
