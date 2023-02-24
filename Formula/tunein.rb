class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.1.1/tunein_v0.1.1_x86_64-apple-darwin.tar.gz"
  sha256 "c3741a1b148e03c1821f0f799916669f4edeee9ce69de00894915c3d3b20919a"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.1.1/tunein_v0.1.1_x86_64-apple-darwin.tar.gz"
    sha256 "c3741a1b148e03c1821f0f799916669f4edeee9ce69de00894915c3d3b20919a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.1.1/tunein_v0.1.1_aarch64-apple-darwin.tar.gz"
    sha256 "b67183d26c04c461e762da73248e5505bba1668d5bc73aa40f2a3a51748d5a9d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.1.1/tunein_v0.1.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "31694ef3d339675793300f2d8ca5d3a332edac0b0e3e2a24c2509e2fe262141c"
  end

  def install
    bin.install "tunein"
  end
end
