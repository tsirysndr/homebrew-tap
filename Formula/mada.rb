class Mada < Formula
  desc "Mada is a CLI that facilitates the search for regions, districts, communes and fokontany"
  homepage "https://github.com/tsirysndr/mada"
  url "https://github.com/tsirysndr/mada/releases/download/v0.4.1/mada_v0.4.1_x86_64-apple-darwin.tar.gz"
  sha256 "a78ea358a90a0a43c0e08096518b1898c8b2bc7006d0cb5db7583ef492e2f62a"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/mada/releases/download/v0.4.1/mada_v0.4.1_x86_64-apple-darwin.tar.gz"
    sha256 "a78ea358a90a0a43c0e08096518b1898c8b2bc7006d0cb5db7583ef492e2f62a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/mada/releases/download/v0.4.1/mada_v0.4.1_aarch64-apple-darwin.tar.gz"
    sha256 "48d87d97fc7068007f8b73c444f37f0ab26f6353837077921645e798c2d6e789"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/mada/releases/download/v0.4.1/mada_v0.4.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "26c96be5c1692a8780a4047556962ac62f2be7219ffc4ef040fdbccb0c27f07a"
  end

  def install
    bin.install "mada"
  end
end
