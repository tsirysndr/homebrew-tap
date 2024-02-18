class Envhub < Formula
  desc "Manage your dotfiles and packages with ease. Define your $HOME as Code 💻 🚀 ✨"
  homepage "https://github.com/tsirysndr/envhub"
  url "https://github.com/tsirysndr/envhub/releases/download/v0.2.5/envhub_v0.2.5_x86_64-apple-darwin.tar.gz"
  sha256 "fccb15f1cf016203450ab250bc96a6feaee89b55601ab8785f6d09b88716d548"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.5/envhub_v0.2.5_x86_64-apple-darwin.tar.gz"
    sha256 "fccb15f1cf016203450ab250bc96a6feaee89b55601ab8785f6d09b88716d548"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.5/envhub_v0.2.5_aarch64-apple-darwin.tar.gz"
    sha256 "89db68b4e90e9585cb975e0702df1e9a095656d5b73f23efd3dd1043376062fb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.5/envhub_v0.2.5_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5de8f3694933e1610df420febf44e3cd513ee9de421182ffb9241b936618e70f"
  end

  def install
    bin.install "envhub"
  end
end
