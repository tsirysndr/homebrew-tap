class Tunein < Formula
  desc "Browse and listen to thousands of radio stations across the globe right from your terminal"
  homepage "https://github.com/tsirysndr/tunein-cli"
  url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.2.5/tunein_v0.2.5_aarch64-apple-darwin.tar.gz"
  sha256 "6316b069d262817b463538a741913c0a01ca216166ad303c0ace825ee2aadf8e"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.2.5/tunein_v0.2.5_x86_64-apple-darwin.tar.gz"
    sha256 "91254d1c4c4a8e1225f782d72cae4f850a4cf58c6a7679e503dd2e6f2907eb3a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.2.5/tunein_v0.2.5_aarch64-apple-darwin.tar.gz"
    sha256 "6316b069d262817b463538a741913c0a01ca216166ad303c0ace825ee2aadf8e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/tunein-cli/releases/download/v0.2.5/tunein_v0.2.5_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "26d8e29e5875c593ebea9e9eb4b13aeea361dc0e01c925115e7d07da9f560783"
  end

  def install
    bin.install "tunein"
  end
end
