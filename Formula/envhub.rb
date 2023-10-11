class Envhub < Formula
  desc "Manage your dotfiles and packages with ease. Define your $HOME as Code 💻 🚀 ✨"
  homepage "https://github.com/tsirysndr/envhub"
  url "https://github.com/tsirysndr/envhub/releases/download/v0.2.1/envhub_v0.2.1_x86_64-apple-darwin.tar.gz"
  sha256 "b8f18dc4a3af196fe8d4dcba5622d74bbe7f55b07c6710f87ebe92349bc93707"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.1/envhub_v0.2.1_x86_64-apple-darwin.tar.gz"
    sha256 "b8f18dc4a3af196fe8d4dcba5622d74bbe7f55b07c6710f87ebe92349bc93707"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.1/envhub_v0.2.0_aarch64-apple-darwin.tar.gz"
    sha256 "fc12b7bbb07589e8fc51891eaf03a4e926b79996fa30ddebc589cc860c4501d2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.0/envhub_v0.2.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9bd5df60efe9830c87e0131ffcc52664838779648b913971197ff63f984791f8"
  end

  def install
    bin.install "envhub"
  end
end
