class Dbsandbox < Formula
  desc "Database, search and authorization sandboxes with ZFS data branches"
  homepage "https://github.com/tsirysndr/dbsandbox"
  version "0.2.1"
  license "MIT"

  depends_on "docker"
  depends_on "tsirysndr/tap/bsdkrun"

  on_macos do
    on_arm do
      url "https://github.com/tsirysndr/dbsandbox/releases/download/v#{version}/dbsandbox-darwin-aarch64.tar.gz"
      sha256 "603997e02416735eb96aa24b154a2d90f22ce49fe62af531b7f43e0205e15f88"
    end

    depends_on arch: :arm64
  end

  on_linux do
    on_intel do
      url "https://github.com/tsirysndr/dbsandbox/releases/download/v#{version}/dbsandbox-linux-x86_64.tar.gz"
      sha256 "89a6ece84ffead685381717f24a5293de567857ebfd272de7657df5fd9f99e6d"
    end

    on_arm do
      url "https://github.com/tsirysndr/dbsandbox/releases/download/v#{version}/dbsandbox-linux-arm64.tar.gz"
      sha256 "0f14037902cea6324a5c13da6eba5cd501c5b3721b17a4c12975f0012f99a61e"
    end
  end

  def install
    bin.install "dbsandbox"
  end

  test do
    assert_match "dbsandbox #{version}", shell_output("#{bin}/dbsandbox --version")
    assert_match "postgres", shell_output("#{bin}/dbsandbox --help")
  end
end
