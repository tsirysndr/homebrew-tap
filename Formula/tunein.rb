class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.7.0/tunein_v0.7.0_aarch64-apple-darwin.tar.gz"
  sha256 "138d0294d9ea3b1731fbf4150f333d53f99ef3742aef7a6ddebb1c6e6aef231a"
  version "0.7.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.7.0/tunein_v0.7.0_x86_64-apple-darwin.tar.gz"
    sha256 "952accb3a4957891348e63a95db9d419537c68ecfb5061aa44d1236b7bc6a184"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.7.0/tunein_v0.7.0_aarch64-apple-darwin.tar.gz"
    sha256 "138d0294d9ea3b1731fbf4150f333d53f99ef3742aef7a6ddebb1c6e6aef231a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.7.0/tunein_v0.7.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4baa8dc10de561f975b3403aedf618c2f54d00cfc290e78a086c9891a54788a7"
  end

  def install
    bin.install "tunein"
  end
end
