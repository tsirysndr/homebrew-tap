class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockbox-zig"
  url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.17/rockbox_2026.05.17_aarch64-darwin.tar.gz"
  sha256 "3a1db6b8088b7457ceeae32df07f239c69f902daa5b4002a479952c777dbcdbc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.17/rockbox_2026.05.17_x86_64-darwin.tar.gz"
    sha256 "917bee35c868266d53f23246887234658a26e0ca26b9f95a872fc534b9d1db39"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.17/rockbox_2026.05.17_aarch64-darwin.tar.gz"
    sha256 "3a1db6b8088b7457ceeae32df07f239c69f902daa5b4002a479952c777dbcdbc"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.17/rockbox_2026.05.17_x86_64-linux.tar.gz"
    sha256 "72ef3cc76f0fbfecf594f3045cfd322e2a30dd1d822f63c5cb7151745dea46b2"
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
