class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.2.0/tunein_v0.2.0_aarch64-apple-darwin.tar.gz"
  sha256 "cc314a5dd519e5ea03f4776cd63b2c8f25c1fdb243878b827b61f974a0d61735"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.2.0/tunein_v0.2.0_x86_64-apple-darwin.tar.gz"
    sha256 "e4205b9be5ed097965a85048638e299791315988799283128dd4db3f9716d711"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.2.0/tunein_v0.2.0_aarch64-apple-darwin.tar.gz"
    sha256 "cc314a5dd519e5ea03f4776cd63b2c8f25c1fdb243878b827b61f974a0d61735"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.2.0/tunein_v0.2.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "10b15893c5dbf54001281ebde8873701018f3a2e3e0a3d7b6649a0a9833d5d66"
  end

  def install
    bin.install "tunein"
  end
end
