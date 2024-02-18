class Envhub < Formula
  desc "Manage your dotfiles and packages with ease. Define your $HOME as Code 💻 🚀 ✨"
  homepage "https://github.com/tsirysndr/envhub"
  url "https://github.com/tsirysndr/envhub/releases/download/v0.2.6/envhub_v0.2.6_x86_64-apple-darwin.tar.gz"
  sha256 "a87e711c65da0c3d87c97ca30d29dca82dc6e87e3e5f6581b865b9642267660f"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.6/envhub_v0.2.6_x86_64-apple-darwin.tar.gz"
    sha256 "a87e711c65da0c3d87c97ca30d29dca82dc6e87e3e5f6581b865b9642267660f"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.6/envhub_v0.2.6_aarch64-apple-darwin.tar.gz"
    sha256 "6f5fc1ca86d942da2c4ce1fe4f7ac5a0ef131b41b6083282337f9f730fa68038"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.6/envhub_v0.2.6_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "eec54ffcefebd971382957e1234687aca6c97ce5b5c42a111c3a7c15ae7df224"
  end

  def install
    bin.install "envhub"
  end
end
