class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockbox-zig"
  url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.09/rockbox_2026.05.09_aarch64-darwin.tar.gz"
  sha256 "599001765acf2d790fb273e099e2aa95fc8375c9814f52876579cc267f62b375"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.09/rockbox_2026.05.09_x86_64-darwin.tar.gz"
    sha256 "51e3e5ce9ab97f27946282ebe57a6c8c955ae7a7d6e2a58a47ae961dfeedf251"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.09/rockbox_2026.05.09_aarch64-darwin.tar.gz"
    sha256 "599001765acf2d790fb273e099e2aa95fc8375c9814f52876579cc267f62b375"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.09/rockbox_2026.05.09_x86_64-linux.tar.gz"
    sha256 "d92b29031582b3cf605eb5f0365dbafade798866eb8ba8b00fdce8eda70bf2be"
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
