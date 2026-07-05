class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.5.0/tunein_v0.5.0_aarch64-apple-darwin.tar.gz"
  sha256 "af838e8f2458899746a36e60c1db322d7f8830b521a7b790f0c6ad24a7651cea"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.5.0/tunein_v0.5.0_x86_64-apple-darwin.tar.gz"
    sha256 "f9a82d145fe3aae9998b953faecc352a096f40c2141c88e300404b196535058b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.5.0/tunein_v0.5.0_aarch64-apple-darwin.tar.gz"
    sha256 "af838e8f2458899746a36e60c1db322d7f8830b521a7b790f0c6ad24a7651cea"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.5.0/tunein_v0.5.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e2d4c374432a7708ebe12e391a373e5a5f24f3b9c972206c6accaf1d6d9638a3"
  end

  def install
    bin.install "tunein"
  end
end
