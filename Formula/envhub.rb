class Envhub < Formula
  desc "Manage your dotfiles and packages with ease. Define your $HOME as Code 💻 🚀 ✨"
  homepage "https://github.com/tsirysndr/envhub"
  url "https://github.com/tsirysndr/envhub/releases/download/v0.2.10/envhub_v0.2.10_x86_64-apple-darwin.tar.gz"
  sha256 "3c0d652814a9fa597025279469beb117c67aa12c6cdad0ca446269bbb896af8f"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.10/envhub_v0.2.10_x86_64-apple-darwin.tar.gz"
    sha256 "3c0d652814a9fa597025279469beb117c67aa12c6cdad0ca446269bbb896af8f"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.10/envhub_v0.2.10_aarch64-apple-darwin.tar.gz"
    sha256 "386ad6015501bdc40678ba48ca1764d89e687dec497e4363b9dfb100dd841f64"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.10/envhub_v0.2.10_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4b8cde8510c4658af05e38a4823294c4aec6de09cc89a4a225de92e87e9a09d0"
  end

  def install
    bin.install "envhub"
  end
end
