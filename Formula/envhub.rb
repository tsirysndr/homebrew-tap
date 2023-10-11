class Envhub < Formula
  desc "Manage your dotfiles and packages with ease. Define your $HOME as Code 💻 🚀 ✨"
  homepage "https://github.com/tsirysndr/envhub"
  url "https://github.com/tsirysndr/envhub/releases/download/v0.2.2/envhub_v0.2.2_x86_64-apple-darwin.tar.gz"
  sha256 "ac80dfebbc3d2be8ab6f1c5e9b7b23c750600fee6ee0cd6ebadfded9c398199a"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.2/envhub_v0.2.2_x86_64-apple-darwin.tar.gz"
    sha256 "ac80dfebbc3d2be8ab6f1c5e9b7b23c750600fee6ee0cd6ebadfded9c398199a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.2/envhub_v0.2.2_aarch64-apple-darwin.tar.gz"
    sha256 "3426744faf7f2f32b0648e007105894c900af502810cca99a408a00200e538b5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.2/envhub_v0.2.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4b093e9a38e13aa4db5d66cae417bce6454f4439ad6239424023003938ad1a25"
  end

  def install
    bin.install "envhub"
  end
end
