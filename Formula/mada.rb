class Mada < Formula
  desc "Mada is a CLI that facilitates the search for regions, districts, communes and fokontany"
  homepage "https://github.com/tsirysndr/mada"
  url "https://github.com/tsirysndr/mada/releases/download/v0.4.1/mada_v0.4.1_x86_64-apple-darwin.tar.gz"
  sha256 "5b4da183b7a0d630ac60b03f3fdacd722dd8cdf4ed6764476a240892e9aa34d5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/mada/releases/download/v0.4.1/mada_v0.4.1_x86_64-apple-darwin.tar.gz"
    sha256 "5b4da183b7a0d630ac60b03f3fdacd722dd8cdf4ed6764476a240892e9aa34d5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/mada/releases/download/v0.4.1/mada_v0.4.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "888f8639419199b232cc1b41b3d8315e147cec6c1fe66cec865462ed3c105338"
  end

  def install
    bin.install "mada"
  end
end
