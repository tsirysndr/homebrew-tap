class Genius < Formula
  desc "Search lyrics or song metadata from your terminal"
  homepage "https://github.com/tsirysndr/genius-cli"
  url "https://github.com/tsirysndr/genius-cli/releases/download/v0.2.0/genius_v0.2.0_x86_64-apple-darwin.tar.gz"
  sha256 "057c5b8a4dc0eb9c6cec250323c7ab2b30abdb0e97ca497d95ae3a70131b5076"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/genius-cli/releases/download/v0.2.0/genius_v0.2.0_x86_64-apple-darwin.tar.gz"
    sha256 "057c5b8a4dc0eb9c6cec250323c7ab2b30abdb0e97ca497d95ae3a70131b5076"
  end
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/genius-cli/releases/download/v0.2.0/genius_v0.2.0_aarch64-apple-darwin.tar.gz"
    sha256 "6ab0bece530fae9b0313ee2e7967fbf866f502ac12a875c36c3aa8b87ea0be16"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/genius-cli/releases/download/v0.2.0/genius_v0.2.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8a83cfa3d0307bd8324802f573d7b96fb8b3bcbf0eb34c637d7767a93898195c"
  end

  def install
    bin.install "genius"
  end
end
