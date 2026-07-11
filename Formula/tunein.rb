class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.7.0/tunein_v0.7.0_aarch64-apple-darwin.tar.gz"
  sha256 "3ccfe74e4e0b3a2e3e6e0874d1864da2924ecd514a91f735e6132cc9d501f099"
  version "0.7.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.7.0/tunein_v0.7.0_x86_64-apple-darwin.tar.gz"
    sha256 "3a7ff48f75ff02f195cedc5c158a9956a0edee4125e632ab6e81699dd8c57660"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.7.0/tunein_v0.7.0_aarch64-apple-darwin.tar.gz"
    sha256 "3ccfe74e4e0b3a2e3e6e0874d1864da2924ecd514a91f735e6132cc9d501f099"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.7.0/tunein_v0.7.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f1b89e00e99f9d576bd51df084c33732085478aa5726d88b173244e76bb63962"
  end

  def install
    bin.install "tunein"
  end
end
