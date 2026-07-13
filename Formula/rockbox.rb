class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockboxd"
  url "https://github.com/tsirysndr/rockboxd/releases/download/2026.07.12/rockbox_2026.07.12_aarch64-darwin.tar.gz"
  sha256 "a6d5f445c1d9d2180d5260249a2c538fa3ecc21431027d02e593d014d919dab6"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockboxd/releases/download/2026.07.12/rockbox_2026.07.12_x86_64-darwin.tar.gz"
    sha256 "6102c9ad20ac7ffeb35a0a8959006560227d5700af3a0447996aad7fb2ce861b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockboxd/releases/download/2026.07.12/rockbox_2026.07.12_aarch64-darwin.tar.gz"
    sha256 "a6d5f445c1d9d2180d5260249a2c538fa3ecc21431027d02e593d014d919dab6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockboxd/releases/download/2026.07.12/rockbox_2026.07.12_x86_64-linux.tar.gz"
    sha256 "1b58a6f8eeda0141300ce0f87aaa006e32fd416171d35d3f48ca8a16ba6c77f0"
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
