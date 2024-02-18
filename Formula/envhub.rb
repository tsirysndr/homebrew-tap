class Envhub < Formula
  desc "Manage your dotfiles and packages with ease. Define your $HOME as Code 💻 🚀 ✨"
  homepage "https://github.com/tsirysndr/envhub"
  url "https://github.com/tsirysndr/envhub/releases/download/v0.2.4/envhub_v0.2.4_x86_64-apple-darwin.tar.gz"
  sha256 "b37789cfd9237146b47ee7bd65730daa34bf22c378d38cfd0a36962d63f9edde"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.4/envhub_v0.2.4_x86_64-apple-darwin.tar.gz"
    sha256 "b37789cfd9237146b47ee7bd65730daa34bf22c378d38cfd0a36962d63f9edde"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.4/envhub_v0.2.4_aarch64-apple-darwin.tar.gz"
    sha256 "038d462a540a88adbad97e299aee1bad2ce2bccd5631705521cfa833fb793135"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/envhub/releases/download/v0.2.4/envhub_v0.2.4_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3cddc35e58803e198b327d175ca009b324e7f9169268832398bb4a0622aa7615"
  end

  def install
    bin.install "envhub"
  end
end
