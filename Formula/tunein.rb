class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.2.1/tunein_v0.2.1_aarch64-apple-darwin.tar.gz"
  sha256 "832409844847c707842dfec132ef64809e735a6df0413bbebfbce260e4bca4bc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.2.1/tunein_v0.2.1_x86_64-apple-darwin.tar.gz"
    sha256 "a13eb915939a389454f678f60c07d81d1320de47f62774c9a4c71e0ccaadbc13"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.2.1/tunein_v0.2.1_aarch64-apple-darwin.tar.gz"
    sha256 "832409844847c707842dfec132ef64809e735a6df0413bbebfbce260e4bca4bc"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.2.1/tunein_v0.2.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "df04eaeebc7c9adfa59a1bf0d834cd12d6e808efaa0372233b75dce8cbd8a9f9"
  end

  def install
    bin.install "tunein"
  end
end
