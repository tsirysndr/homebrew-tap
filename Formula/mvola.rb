class Mvola < Formula
  desc "Command-line tool for MVola API"
  homepage "https://github.com/tsirysndr/mvola-cli"
  url "https://github.com/tsirysndr/mvola-cli/releases/download/0.1.4/mvola_0.1.4_x86_64-apple-darwin.tar.gz"
  sha256 "4c84b02c3230f95c01e35448b47e52223b49742251c21ffe613b35564cbb056a"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/mvola-cli/releases/download/0.1.4/mvola_0.1.4_x86_64-apple-darwin.tar.gz"
    sha256 "4c84b02c3230f95c01e35448b47e52223b49742251c21ffe613b35564cbb056a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/mvola-cli/releases/download/0.1.4/mvola_0.1.4_aarch64-apple-darwin.tar.gz"
    sha256 "f15eb4e1ab8bb3f7dac11d2f4e3811c19c5778a45f84d9105fa54239a746e3e7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/mvola-cli/releases/download/0.1.4/mvola_0.1.4_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5c329fa8b2af3e618f98cc02faa48823e14d71305b5291fb7043a30e08bcd9da"
  end

  def install
    bin.install "mvola"
  end
end
