class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockbox-zig"
  url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.14/rockbox_2026.06.14_aarch64-darwin.tar.gz"
  sha256 "a3a28697422da47518814c4d7c87cb2516c1ab918e0a8d6d4a863824985f7f47"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.14/rockbox_2026.06.14_x86_64-darwin.tar.gz"
    sha256 "e843c2b099b8800ff6c8b7c5083d52afed73741b6c65445556c16afab43ad867"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.14/rockbox_2026.06.14_aarch64-darwin.tar.gz"
    sha256 "a3a28697422da47518814c4d7c87cb2516c1ab918e0a8d6d4a863824985f7f47"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.14/rockbox_2026.06.14_x86_64-linux.tar.gz"
    sha256 "d71146e6f9250538d029d2a71a7ba560ac23d48aceef0817dfb7831d715ef748"
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
