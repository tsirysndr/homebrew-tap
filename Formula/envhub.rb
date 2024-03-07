class Envhub < Formula
  desc "Manage your dotfiles and packages with ease. Define your $HOME as Code 💻 🚀 ✨"
  homepage "https://github.com/tsirysndr/envhub"
  url "https://github.com/tsirysndr/envhub/releases/download/v0.2.16/envhub_v0.2.16_aarch64-apple-darwin.tar.gz"
  sha256 "a2ee944a2ef27d45bc5542e3d90c72bbcbfde57d341fc18d5a6232f3f9df34bd"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.16/envhub_v0.2.16_x86_64-apple-darwin.tar.gz"
    sha256 "ded56bc2ab7e51649b0ad7c9a637aa88b2b585679ad1950ffa4acf7a5c743c10"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.16/envhub_v0.2.16_aarch64-apple-darwin.tar.gz"
    sha256 "a2ee944a2ef27d45bc5542e3d90c72bbcbfde57d341fc18d5a6232f3f9df34bd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.16/envhub_v0.2.16_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d4af2c794bf7b5f7e16fedb2f7ff8f911e60fbcdc71723c0dc03d5e44c97e825"
  end

  def install
    bin.install "envhub"
  end
end
