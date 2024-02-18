class Envhub < Formula
  desc "Manage your dotfiles and packages with ease. Define your $HOME as Code 💻 🚀 ✨"
  homepage "https://github.com/tsirysndr/envhub"
  url "https://github.com/tsirysndr/envhub/releases/download/v0.2.7/envhub_v0.2.7_x86_64-apple-darwin.tar.gz"
  sha256 "b08e530e548affa7af658b1f0d040a15e5a6c66fce78dfd5cf7a6bf7d286940a"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.7/envhub_v0.2.7_x86_64-apple-darwin.tar.gz"
    sha256 "b08e530e548affa7af658b1f0d040a15e5a6c66fce78dfd5cf7a6bf7d286940a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.7/envhub_v0.2.7_aarch64-apple-darwin.tar.gz"
    sha256 "652db18a96734df16a1a82a4cb1d14db51ff6bb2ac8cbe391ef0cbbb4ae7748e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.7/envhub_v0.2.7_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "42be7abb2bedb64bc06371e8ed1ba99107aded64cbae63e2ed5856c761b37106"
  end

  def install
    bin.install "envhub"
  end
end
