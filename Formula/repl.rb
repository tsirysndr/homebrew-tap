class Repl < Formula
  desc "Simple extensible REPL Command Line Tool."
  homepage "https://github.com/tsirysndr/repl"
  url "https://github.com/tsirysndr/repl/releases/download/v0.7.0/repl_v0.7.0_aarch64-apple-darwin.tar.gz"
  sha256 "a90d018b1799942e791aff90ebcdd48c1306884750ead0da31aa2096317eca63"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/repl/releases/download/v0.7.0/repl_v0.7.0_x86_64-apple-darwin.tar.gz"
    sha256 "e64b367a33a86013d534b19b49e7a485086abced2f83c1d07fbdb886c0fb33be"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/repl/releases/download/v0.7.0/repl_v0.7.0_aarch64-apple-darwin.tar.gz"
    sha256 "a90d018b1799942e791aff90ebcdd48c1306884750ead0da31aa2096317eca63"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/repl/releases/download/v0.7.0/repl_v0.7.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "01d37fa21c48fdfc790cd83824ad1cc31e14d1019d9979c15bbd402fe62e7d74"
  end

  depends_on "fzf"

  def install
    bin.install "repl"
  end
end
