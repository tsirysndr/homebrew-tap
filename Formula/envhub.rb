class Envhub < Formula
  desc "Manage your dotfiles and packages with ease. Define your $HOME as Code 💻 🚀 ✨"
  homepage "https://github.com/tsirysndr/envhub"
  url "https://github.com/tsirysndr/envhub/releases/download/v0.2.3/envhub_v0.2.3_x86_64-apple-darwin.tar.gz"
  sha256 "ea85f4d698f834e93547c967fc7b528741c5a8973a8f30a96b51d45bc0229f65"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.3/envhub_v0.2.3_x86_64-apple-darwin.tar.gz"
    sha256 "ea85f4d698f834e93547c967fc7b528741c5a8973a8f30a96b51d45bc0229f65"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.3/envhub_v0.2.3_aarch64-apple-darwin.tar.gz"
    sha256 "233165000d62f14468b9e82607ffdebbf1d18af09e61828bcd8f2465283efc3d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.3/envhub_v0.2.3_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "46f3f733a3daaea702a267ef6de913abfd491cfbac8156da0e586f1042d00887"
  end

  def install
    bin.install "envhub"
  end
end
