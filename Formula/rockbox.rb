class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockbox-zig"
  url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.25/rockbox_2026.05.25_aarch64-darwin.tar.gz"
  sha256 "e22bc6bd69b69ed629e8bb97bde8d8e0bfa292731a9e0605cf438005407323c7"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.25/rockbox_2026.05.25_x86_64-darwin.tar.gz"
    sha256 "76bad385ef85f0e278e9ffdaebce73558140c13f3300db24734b7dbd1f34dd13"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.25/rockbox_2026.05.25_aarch64-darwin.tar.gz"
    sha256 "e22bc6bd69b69ed629e8bb97bde8d8e0bfa292731a9e0605cf438005407323c7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.25/rockbox_2026.05.25_x86_64-linux.tar.gz"
    sha256 "c92f6334feeb9ff27c552f992e0dcae17d92b377ee154c4ce1e5f0ae8ec85e55"
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
