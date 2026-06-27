class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockbox-zig"
  url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.26/rockbox_2026.06.26_aarch64-darwin.tar.gz"
  sha256 "da544633eea44d4e241dda6290edca7051cd5f1cc35c327756f236c601799268"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.26/rockbox_2026.06.26_x86_64-darwin.tar.gz"
    sha256 "d3d8bb1a17c521b5b1379851cf825ebd67226648d8e2681b9e1195d253c230ae"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.26/rockbox_2026.06.26_aarch64-darwin.tar.gz"
    sha256 "da544633eea44d4e241dda6290edca7051cd5f1cc35c327756f236c601799268"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.26/rockbox_2026.06.26_x86_64-linux.tar.gz"
    sha256 "fbefcc1f7cc477ced4bbbc1fbfddbd3b8eff35363745cf680bbfcb7e35204f00"
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
