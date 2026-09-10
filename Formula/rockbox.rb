class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockboxd"
  url "https://github.com/tsirysndr/rockboxd/releases/download/2026.09.10/rockbox_2026.09.10_aarch64-darwin.tar.gz"
  sha256 "b42e43c66407328c85affb5ce73ee4df45e725b3096a95dc4aefb713eece13a7"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockboxd/releases/download/2026.09.10/rockbox_2026.09.10_x86_64-darwin.tar.gz"
    sha256 "ef6d50030f4f020b6c2bea1bc206e47be16fe7e509a39da9d04062c086706d56"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockboxd/releases/download/2026.09.10/rockbox_2026.09.10_aarch64-darwin.tar.gz"
    sha256 "b42e43c66407328c85affb5ce73ee4df45e725b3096a95dc4aefb713eece13a7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockboxd/releases/download/2026.09.10/rockbox_2026.09.10_x86_64-linux.tar.gz"
    sha256 "d4c7231da00e98680dd8f1ae5e1fe359dc19839124f5c658669a1b576760f274"
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
