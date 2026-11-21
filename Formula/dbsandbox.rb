class Dbsandbox < Formula
  desc "Database, search and authorization sandboxes with ZFS data branches"
  homepage "https://github.com/tsirysndr/dbsandbox"
  version "0.2.0"
  license "MIT"

  depends_on "docker"
  depends_on "tsirysndr/tap/bsdkrun"

  on_macos do
    on_arm do
      url "https://github.com/tsirysndr/dbsandbox/releases/download/v#{version}/dbsandbox-darwin-aarch64.tar.gz"
      sha256 "0098d832a1f8cdfea597b95a3338cee0053594a9b467e7eee3aa38aa0794961b"
    end

    depends_on arch: :arm64
  end

  on_linux do
    on_intel do
      url "https://github.com/tsirysndr/dbsandbox/releases/download/v#{version}/dbsandbox-linux-x86_64.tar.gz"
      sha256 "29da9ce03defccbf667199ad66e6e314202766fd631147814d0f1e86889ca97c"
    end

    on_arm do
      url "https://github.com/tsirysndr/dbsandbox/releases/download/v#{version}/dbsandbox-linux-arm64.tar.gz"
      sha256 "915d72a7bf536f98a70a82f9689815ade60aea7113f109fe1a2f0d6e54010331"
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
