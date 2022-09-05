class Mvola < Formula
  desc "Command-line tool for MVola API"
  homepage "https://github.com/tsirysndr/mvola-cli"
  url "https://github.com/tsirysndr/mvola-cli/releases/download/0.1.4/mvola_0.1.4_x86_64-apple-darwin.tar.gz"
  sha256 "b28c4b2aba91c1eb5b97c0bdc40795a3ec659932e86bae04364841fe855b4d58"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/mvola-cli/releases/download/0.1.4/mvola_0.1.4_x86_64-apple-darwin.tar.gz"
    sha256 "b28c4b2aba91c1eb5b97c0bdc40795a3ec659932e86bae04364841fe855b4d58"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/mvola-cli/releases/download/0.1.4/mvola_0.1.4_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "270d61d8480163b71981faf866ee3dc3f457595ef841c975635f7274a6bf7f7a"
  end

  def install
    bin.install "mvola"
  end
end
