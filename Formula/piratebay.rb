class Piratebay < Formula
  desc "A command-line tool written in Rust to search for torrents on piratebay"
  homepage "https://github.com/tsirysndr/piratebay"
  url "https://github.com/tsirysndr/piratebay/releases/download/v0.2.0/piratebay_v0.2.0_x86_64-apple-darwin.tar.gz"
  sha256 "12542e507a632a20d1f5a2dff4d7926b3bec6c2f490475a036cf4421b07df740"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.2.0/piratebay_v0.2.0_x86_64-apple-darwin.tar.gz"
    sha256 "12542e507a632a20d1f5a2dff4d7926b3bec6c2f490475a036cf4421b07df740"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.2.0/piratebay_v0.2.0_aarch64-apple-darwin.tar.gz"
    sha256 "af5c15acd7f9104cd41a3c5d9f71446a923d214d518f68ef21d2e37efe67b9d6"
  end
  
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/piratebay/releases/download/v0.2.0/piratebay_v0.2.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "79ee6b4944e2d66780e6dec803b77a2a8a7875f5fa91b20fc45cea7897bc0796"
  end

  def install
    bin.install "piratebay"
  end
end
