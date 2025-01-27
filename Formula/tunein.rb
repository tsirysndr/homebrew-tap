class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.3.1/tunein_v0.3.1_aarch64-apple-darwin.tar.gz"
  sha256 "b584ee80dcd98ca1e23a0ba0815a741a2200d07391814cb3308cf50e614819d4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.3.1/tunein_v0.3.1_x86_64-apple-darwin.tar.gz"
    sha256 "0a49a6224f24d82ba9d55b9b454496c9b6d1918c86879c9f709175fca7b91f19"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.3.1/tunein_v0.3.1_aarch64-apple-darwin.tar.gz"
    sha256 "b584ee80dcd98ca1e23a0ba0815a741a2200d07391814cb3308cf50e614819d4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.3.1/tunein_v0.3.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fdd7b862ec7912db256e6ced5e7c68abda6ba569e77dd8b687efc541aa7b5a04"
  end

  def install
    bin.install "tunein"
  end
end
