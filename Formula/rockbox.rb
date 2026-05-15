class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockbox-zig"
  url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.15/rockbox_2026.05.15_aarch64-darwin.tar.gz"
  sha256 "d88b91adba3c60b2f39f8f3f5956cf0b20166d9aae9094cdadaaf3181bd43e72"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.15/rockbox_2026.05.15_x86_64-darwin.tar.gz"
    sha256 "7f507d97a1b54e5761e9faefc2b802687e782ef333acff83fba8e5ee76442627"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.15/rockbox_2026.05.15_aarch64-darwin.tar.gz"
    sha256 "d88b91adba3c60b2f39f8f3f5956cf0b20166d9aae9094cdadaaf3181bd43e72"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.15/rockbox_2026.05.15_x86_64-linux.tar.gz"
    sha256 "d47ed6254fe6a956bc5db3301bbcb43fa7474d7d2e2c68fec45d8d0a00657015"
  end

  def install
    bin.install "rockbox"
    bin.install "rockboxd"
  end

  service do
    run [opt_bin/"rockboxd"]
    keep_alive true
    working_dir ENV["HOME"]
    environment_variables HOME: ENV["HOME"],
                          PATH: "#{ENV["HOME"]}/.rockbox/bin:#{HOMEBREW_PREFIX}/bin:/usr/bin:/bin:/usr/sbin:/sbin"
    log_path var/"log/rockboxd.log"
    error_log_path var/"log/rockboxd.log"
  end
end
