class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.1.0/tunein_v0.1.0_x86_64-apple-darwin.tar.gz"
  sha256 "e130f4e0368bc9918a8657fda229448d3b8ed548c4b08a44f53383bdc72dd148"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.1.0/tunein_v0.1.0_x86_64-apple-darwin.tar.gz"
    sha256 "e130f4e0368bc9918a8657fda229448d3b8ed548c4b08a44f53383bdc72dd148"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.1.0/tunein_v0.1.0_aarch64-apple-darwin.tar.gz"
    sha256 "e130f4e0368bc9918a8657fda229448d3b8ed548c4b08a44f53383bdc72dd148"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.1.0/tunein_v0.1.0_aarch64-apple-darwin.tar.gz"
    sha256 "9133f004aa58a7590a0edec0fb56185607afbc235fb12bdbc70e2a979557debe"
  end

  def install
    bin.install "tunein"
  end
end
