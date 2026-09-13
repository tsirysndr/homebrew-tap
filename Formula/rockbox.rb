class Rockbox < Formula
  desc "A modern Music Player Daemon based on Rockbox firmware"
  homepage "https://github.com/tsirysndr/rockboxd"
  url "https://github.com/tsirysndr/rockboxd/releases/download/2026.09.13/rockbox_2026.09.13_aarch64-darwin.tar.gz"
  sha256 "3d52a9e14275899ba2b46e87d83236f1f9a8eaca7a2fa7b1dcfdbfb4d22e190e"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockboxd/releases/download/2026.09.13/rockbox_2026.09.13_x86_64-darwin.tar.gz"
    sha256 "085a2e2eecc26c2261a514c5a78633241c720b5f2256288d42ed51dd35b28f3a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/rockboxd/releases/download/2026.09.13/rockbox_2026.09.13_aarch64-darwin.tar.gz"
    sha256 "3d52a9e14275899ba2b46e87d83236f1f9a8eaca7a2fa7b1dcfdbfb4d22e190e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/rockboxd/releases/download/2026.09.13/rockbox_2026.09.13_amd64-linux.tar.gz"
    sha256 "22052e98906c63acd045c853a9304c9ca5dccdd37aa7627369766cff2473597d"
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
