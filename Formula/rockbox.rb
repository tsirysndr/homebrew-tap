class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockbox-zig"
  url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.18/rockbox_2026.06.18_aarch64-darwin.tar.gz"
  sha256 "4b4771cc80d916ea1b20aaa10f1077a2d5e4c350036f2f8205d9f2b4f05cb2d1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.18/rockbox_2026.06.18_x86_64-darwin.tar.gz"
    sha256 "283b9865c9c6d9e509102ee7edc49ee3be783734803d108c516c27f24e632b77"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.18/rockbox_2026.06.18_aarch64-darwin.tar.gz"
    sha256 "4b4771cc80d916ea1b20aaa10f1077a2d5e4c350036f2f8205d9f2b4f05cb2d1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.18/rockbox_2026.06.18_x86_64-linux.tar.gz"
    sha256 "788f559db25a33e34b425fbf66531b50f1b04e04787a50909bac61bb421499e8"
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
