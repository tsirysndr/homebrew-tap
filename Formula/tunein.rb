class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.1.2/tunein_v0.1.2_x86_64-apple-darwin.tar.gz"
  sha256 "998efee8b8719a295e4d716ccf6f614917e60b396a95cc8b22dd2b668b0078d3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.1.2/tunein_v0.1.2_x86_64-apple-darwin.tar.gz"
    sha256 "998efee8b8719a295e4d716ccf6f614917e60b396a95cc8b22dd2b668b0078d3"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.1.2/tunein_v0.1.2_aarch64-apple-darwin.tar.gz"
    sha256 "1ada9866fa3fe8845af069c7f301360f0a701702538332d194b31d5ef61e6b7d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.1.2/tunein_v0.1.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "075c5e621801acee24d012cb623be9e30d10b494964a00eae8ff8a048f27532b"
  end

  def install
    bin.install "tunein"
  end
end
