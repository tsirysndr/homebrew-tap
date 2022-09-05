class Datpiff < Formula
  desc "A command-line tool for DatPiff Mixtapes"
  homepage "https://github.com/tsirysndr/datpiff"
  url "https://github.com/tsirysndr/datpiff/releases/download/v0.1.11/datpiff_v0.1.11_x86_64-apple-darwin.tar.gz"
  sha256 "36f5cd9ba0ff2ecb1763e3451d2b943d1681f4fa5bb7e72479cec25416ba3946"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/datpiff/releases/download/v0.1.11/datpiff_v0.1.11_x86_64-apple-darwin.tar.gz"
    sha256 "36f5cd9ba0ff2ecb1763e3451d2b943d1681f4fa5bb7e72479cec25416ba3946"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/datpiff/releases/download/v0.1.11/datpiff_v0.1.11_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "372973f4a743f2ebc0457bdc1e88adcb3ebc48307d7361aa48ca4e8cef96706a"
  end

  def install
    bin.install "datpiff"
  end
end
