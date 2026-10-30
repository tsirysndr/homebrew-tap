class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockboxd"
  url "https://github.com/tsirysndr/rockboxd/releases/download/2026.10.29/rockbox_2026.10.29_aarch64-darwin.tar.gz"
  sha256 "372b94f7dc08266d61d13349e8ffcd246761bdd9c2d2c83e6d7cb5bf9e202b27"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockboxd/releases/download/2026.10.29/rockbox_2026.10.29_x86_64-darwin.tar.gz"
    sha256 "cb2113aea2728c1bcb745186fddaa1689fd1b7cc1df0ef87d2758a3f387857f3"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockboxd/releases/download/2026.10.29/rockbox_2026.10.29_aarch64-darwin.tar.gz"
    sha256 "372b94f7dc08266d61d13349e8ffcd246761bdd9c2d2c83e6d7cb5bf9e202b27"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockboxd/releases/download/2026.10.29/rockbox_2026.10.29_amd64-linux.tar.gz"
    sha256 "2e995f74cc7d0d2a6ba4c5b672b18a9c3c09c3ad4f128261cafd28f0265062c9"
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
