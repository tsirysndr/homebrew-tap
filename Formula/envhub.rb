class Envhub < Formula
  desc "Manage your dotfiles and packages with ease. Define your $HOME as Code 💻 🚀 ✨"
  homepage "https://github.com/tsirysndr/envhub"
  url "https://github.com/tsirysndr/envhub/releases/download/v0.2.0/envhub_v0.2.0_x86_64-apple-darwin.tar.gz"
  sha256 "2f304477f71031ea476097f4ed2b19281904ece105ef25ad0a68c7c46ae5521e"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.0/envhub_v0.2.0_x86_64-apple-darwin.tar.gz"
    sha256 "2f304477f71031ea476097f4ed2b19281904ece105ef25ad0a68c7c46ae5521e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.0/envhub_v0.2.0_aarch64-apple-darwin.tar.gz"
    sha256 "cccede4b37bbb4f523487b0c4d5d0ed5cf0c3baf08c56385ed0ccd7e519db6db"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.0/envhub_v0.2.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bf7546ca22cd00f871abd8f663654e372b4bb6f2d1e8a0b23da1f49af2b47d20"
  end

  def install
    bin.install "envhub"
  end
end
