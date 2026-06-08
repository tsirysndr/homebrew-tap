class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockbox-zig"
  url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.08/rockbox_2026.06.08_aarch64-darwin.tar.gz"
  sha256 "b92c06fe5a354f3a5d8e46732cca03609a3be8b36bc97d1f29ecb33f43fc5f49"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.08/rockbox_2026.06.08_x86_64-darwin.tar.gz"
    sha256 "ad70ad0f266d238e65fd6e0d269e4f1b396503272c55db6d2be0cf79c9d2c1ca"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.08/rockbox_2026.06.08_aarch64-darwin.tar.gz"
    sha256 "b92c06fe5a354f3a5d8e46732cca03609a3be8b36bc97d1f29ecb33f43fc5f49"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockbox-zig/releases/download/2026.06.08/rockbox_2026.06.08_x86_64-linux.tar.gz"
    sha256 "67f178dd8be80baccbca91460fcc423227eb20bc598b9daa418b7577193a917e"
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
