class Envhub < Formula
  desc "Manage your dotfiles and packages with ease. Define your $HOME as Code 💻 🚀 ✨"
  homepage "https://github.com/tsirysndr/envhub"
  url "https://github.com/tsirysndr/envhub/releases/download/v0.2.11/envhub_v0.2.11_x86_64-apple-darwin.tar.gz"
  sha256 "eb82da02e69c46c239386b998030db9d9d344b593a02e8cc39471a4e4e20e1fe"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.11/envhub_v0.2.11_x86_64-apple-darwin.tar.gz"
    sha256 "eb82da02e69c46c239386b998030db9d9d344b593a02e8cc39471a4e4e20e1fe"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.11/envhub_v0.2.11_aarch64-apple-darwin.tar.gz"
    sha256 "131c16c4006ef6675ff189939a3220fe1b79d1ffa57f034f1568db6678748143"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.11/envhub_v0.2.11_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e758033a431a9db483c5abb85785859980f8a5604a200050691c993d442d0a97"
  end

  def install
    bin.install "envhub"
  end
end
