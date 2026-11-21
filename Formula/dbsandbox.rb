class Dbsandbox < Formula
  desc "Database, search and authorization sandboxes with ZFS data branches"
  homepage "https://github.com/tsirysndr/dbsandbox"
  version "0.1.0"
  license "MIT"

  depends_on "docker"
  depends_on "tsirysndr/tap/bsdkrun"

  on_macos do
    on_arm do
      url "https://github.com/tsirysndr/dbsandbox/releases/download/v#{version}/dbsandbox-darwin-aarch64.tar.gz"
      sha256 "0e40c1d66b44895544067881220fc53f8a51af5810c286acd9f0d95390e76281"
    end

    depends_on arch: :arm64
  end

  on_linux do
    on_intel do
      url "https://github.com/tsirysndr/dbsandbox/releases/download/v#{version}/dbsandbox-linux-x86_64.tar.gz"
      sha256 "6725733ee06f85bea8e4083761a508d1b93b4101cdcde4da528aea2851290b7a"
    end

    on_arm do
      url "https://github.com/tsirysndr/dbsandbox/releases/download/v#{version}/dbsandbox-linux-arm64.tar.gz"
      sha256 "90f88723b8a1a54cbfad4c30132ba5c6eae29e05d1d45107e679805c20015334"
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
