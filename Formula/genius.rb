class Genius < Formula
  desc "Search lyrics or song metadata from your terminal"
  homepage "https://github.com/tsirysndr/genius-cli"
  url "https://github.com/tsirysndr/genius-cli/releases/download/v0.1.1/genius-cli_v0.1.1_x86_64-apple-darwin.zip"
  sha256 "4b972df98531b28e64e13554fe1cec60c1718ab47bca9217e7fe44bf2e332874"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/genius-cli/releases/download/v0.1.1/genius-cli_v0.1.1_x86_64-apple-darwin.zip"
    sha256 "4b972df98531b28e64e13554fe1cec60c1718ab47bca9217e7fe44bf2e332874"
  end

  def install
    bin.install "genius"
  end
end
