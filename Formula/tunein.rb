class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.6.0/tunein_v0.6.0_aarch64-apple-darwin.tar.gz"
  sha256 "eda6d954c44b7e73c88890e52402b74947f0f94b98cb0e610b85a46098a41da9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.6.0/tunein_v0.6.0_x86_64-apple-darwin.tar.gz"
    sha256 "30455325c0878f29aa182293cc85bdb8fe2d1dd2c8de80d21733ba7a8a1c8f2b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.6.0/tunein_v0.6.0_aarch64-apple-darwin.tar.gz"
    sha256 "eda6d954c44b7e73c88890e52402b74947f0f94b98cb0e610b85a46098a41da9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.6.0/tunein_v0.6.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "96e41e6f6d8a4f437c0bb3e8bcd9a03be96b2e2ab70564054e79a220e1bc36eb"
  end

  def install
    bin.install "tunein"
  end
end
