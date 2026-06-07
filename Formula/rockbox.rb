class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockbox-zig"
  url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.07/rockbox_2026.06.07_aarch64-darwin.tar.gz"
  sha256 "2828898114c9216b36a3203401f73e56ccc41f5522383a75f1a1f40137d0770c"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.07/rockbox_2026.06.07_x86_64-darwin.tar.gz"
    sha256 "e3bdc61b1b2ad7b09622ef98c4a6a6a75265a6742d1a3f58e6babeeb552b55a8"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.07/rockbox_2026.06.07_aarch64-darwin.tar.gz"
    sha256 "2828898114c9216b36a3203401f73e56ccc41f5522383a75f1a1f40137d0770c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.07/rockbox_2026.06.07_x86_64-linux.tar.gz"
    sha256 "4d8a0a9050277720a207203a029572c364b570c15508cfc28c77bda0eacb6cb9"
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
