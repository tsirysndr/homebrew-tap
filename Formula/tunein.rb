class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.4.0/tunein_v0.4.0_aarch64-apple-darwin.tar.gz"
  sha256 "98b40e9d2f7e5a272b8cc53920db0da6a1d2eeab1f462aba0410e0480a1c8776"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.4.0/tunein_v0.4.0_x86_64-apple-darwin.tar.gz"
    sha256 "41b2f21d1c27cccc2c9b5ec8624e9189a3cd7e833be2ca7382f8a15fb13a9f73"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.4.0/tunein_v0.4.0_aarch64-apple-darwin.tar.gz"
    sha256 "98b40e9d2f7e5a272b8cc53920db0da6a1d2eeab1f462aba0410e0480a1c8776"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.4.0/tunein_v0.4.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a4945f497bd35da41a8442a40358f7bab548712667e1703ad68e719b0d6b5df6"
  end

  def install
    bin.install "tunein"
  end
end
