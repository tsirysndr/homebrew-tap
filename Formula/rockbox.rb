class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockbox-zig"
  url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.23/rockbox_2026.06.23_aarch64-darwin.tar.gz"
  sha256 "8e6b288507c8bc1c3f4195b776a9608ae63031ab3e89ca3cf2ec7ad7504b1159"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.23/rockbox_2026.06.23_x86_64-darwin.tar.gz"
    sha256 "4dce650c76de478c8ffc3a9584ae6b67eaa4c55be45c7a1e46903db70c3de65b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.23/rockbox_2026.06.23_aarch64-darwin.tar.gz"
    sha256 "8e6b288507c8bc1c3f4195b776a9608ae63031ab3e89ca3cf2ec7ad7504b1159"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.23/rockbox_2026.06.23_x86_64-linux.tar.gz"
    sha256 "c68abb2db242233efe77e272485c847e0de6b186a8deeef9aecb486acf67ef4c"
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
