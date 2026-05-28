class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockbox-zig"
  url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.27/rockbox_2026.05.27_aarch64-darwin.tar.gz"
  sha256 "396b01712f05697d6454f30e8f8c73f5e1f09679502741d8ea1729161fd9b8db"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.27/rockbox_2026.05.27_x86_64-darwin.tar.gz"
    sha256 "3b3a837af30ae3210bccc09701c6a2bc1f16107bcd72d84a5a492d17bbfbf398"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.27/rockbox_2026.05.27_aarch64-darwin.tar.gz"
    sha256 "396b01712f05697d6454f30e8f8c73f5e1f09679502741d8ea1729161fd9b8db"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.05.27/rockbox_2026.05.27_x86_64-linux.tar.gz"
    sha256 "b845e1cb5863dd5c4e8cea0994b35a3963ea77d713b30c76f2e5b17a23528b34"
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
