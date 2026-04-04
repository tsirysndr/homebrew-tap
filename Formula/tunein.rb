class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.4.2/tunein_v0.4.2_aarch64-apple-darwin.tar.gz"
  sha256 "0f52ff319ec151da0faf7fd6fd45a9b17c4f5f59186f1aa664f8bfc938b9d26a"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.4.2/tunein_v0.4.2_x86_64-apple-darwin.tar.gz"
    sha256 "24896b2e66c32dc963af86fd6999612a36fb136e0e0ee5a02860d9ac36cd54ad"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.4.2/tunein_v0.4.2_aarch64-apple-darwin.tar.gz"
    sha256 "0f52ff319ec151da0faf7fd6fd45a9b17c4f5f59186f1aa664f8bfc938b9d26a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.4.2/tunein_v0.4.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0975df3e213d4a23714036a1c349a7bf29df8feb84f5cc729928c92301e76a57"
  end

  def install
    bin.install "tunein"
  end
end
