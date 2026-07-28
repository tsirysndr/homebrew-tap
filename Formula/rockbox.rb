class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockboxd"
  url "https://github.com/tsirysndr/rockboxd/releases/download/2026.07.28/rockbox_2026.07.28_aarch64-darwin.tar.gz"
  sha256 "662b3d3b37f8fa0ad86028b9093dcfbc9b106f7be2724e3452eec21d54347428"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockboxd/releases/download/2026.07.28/rockbox_2026.07.28_x86_64-darwin.tar.gz"
    sha256 "bfa340e660935e87aa96def70b62c12b340445b6e772b7bcfb580f1e7efb547d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockboxd/releases/download/2026.07.28/rockbox_2026.07.28_aarch64-darwin.tar.gz"
    sha256 "662b3d3b37f8fa0ad86028b9093dcfbc9b106f7be2724e3452eec21d54347428"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockboxd/releases/download/2026.07.28/rockbox_2026.07.28_x86_64-linux.tar.gz"
    sha256 "938a139fe53148a3a06cb8987223195210d62934eb3e1bb33f49749518794e81"
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
