class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockbox-zig"
  url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.05/rockbox_2026.05.05_aarch64-darwin.tar.gz"
  sha256 "6093e740997d63804eb8f67c8c8dd8ea81a56c44184d4505655bb5e13c1cf452"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.05/rockbox_2026.05.05_x86_64-darwin.tar.gz"
    sha256 "709e235318eb885ef31c9bcc380f8b9c5b87a5d2b7428f7305b92624d713506b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.05/rockbox_2026.05.05_aarch64-darwin.tar.gz"
    sha256 "6093e740997d63804eb8f67c8c8dd8ea81a56c44184d4505655bb5e13c1cf452"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.05/rockbox_2026.05.05_x86_64-linux.tar.gz"
    sha256 "1aa395d7b70de36edc035e4a8574e6456afda2e4f570cffe2dc6d9eccd72c0ba"
  end

  def install
    bin.install "rockbox"
    bin.install "rockboxd"
  end

  service do
    run [opt_bin/"rockboxd"]
    keep_alive true
    environment_variables HOME: ENV["HOME"]
    log_path var/"log/rockboxd.log"
    error_log_path var/"log/rockboxd.log"
  end
end
