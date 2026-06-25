class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockbox-zig"
  url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.25/rockbox_2026.06.25_aarch64-darwin.tar.gz"
  sha256 "f7fb6762c5be933e227abd61c09850e5728231500442319c5e20870587c70e06"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.25/rockbox_2026.06.25_x86_64-darwin.tar.gz"
    sha256 "113ce2bbd0662c82ce826e7187d56fb81c52b920db70287fd6fdf6dcb211deee"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.25/rockbox_2026.06.25_aarch64-darwin.tar.gz"
    sha256 "f7fb6762c5be933e227abd61c09850e5728231500442319c5e20870587c70e06"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.25/rockbox_2026.06.25_x86_64-linux.tar.gz"
    sha256 "e9dae33b0566d91c4704e89f600601b75929bf9d8c3ed1a7f5f9295f79ef09f9"
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
