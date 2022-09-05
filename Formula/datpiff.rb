class Datpiff < Formula
  desc "A command-line tool for DatPiff Mixtapes"
  homepage "https://github.com/tsirysndr/datpiff"
  url "https://github.com/tsirysndr/datpiff/releases/download/v0.1.11/datpiff_v0.1.11_x86_64-apple-darwin.tar.gz"
  sha256 "a98ac44d360290d9cfbb9de89f2bf3aa1e037949b6d5ac0a7d154838482d750a"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/datpiff/releases/download/v0.1.11/datpiff_v0.1.11_x86_64-apple-darwin.tar.gz"
    sha256 "a98ac44d360290d9cfbb9de89f2bf3aa1e037949b6d5ac0a7d154838482d750a"
  end

  def install
    bin.install "datpiff"
  end
end
