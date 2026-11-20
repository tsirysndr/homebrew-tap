class DuckdbSbx < Formula
  desc "DuckDB sandboxes with microVM isolation and ZFS data branches"
  homepage "https://github.com/tsirysndr/duckdb-sbx"
  version "0.1.0"
  license "MIT"

  depends_on "docker"
  depends_on "tsirysndr/tap/bsdkrun"

  on_macos do
    on_arm do
      url "https://github.com/tsirysndr/duckdb-sbx/releases/download/v#{version}/duckdb-sbx-darwin-aarch64.tar.gz"
      sha256 "39dc11d8838d9ad4b892cc3cca00b76f680a910d9dd17a0e9cbe8f7d24a85acb"
    end

    depends_on arch: :arm64
  end

  on_linux do
    on_intel do
      url "https://github.com/tsirysndr/duckdb-sbx/releases/download/v#{version}/duckdb-sbx-linux-x86_64.tar.gz"
      sha256 "37600dd12445b4c8260d35d0488f0bbedbb34785477e761f4754a1fc13a4a52d"
    end

    on_arm do
      url "https://github.com/tsirysndr/duckdb-sbx/releases/download/v#{version}/duckdb-sbx-linux-arm64.tar.gz"
      sha256 "ca6375df322a5eb41c8cfcd70bfc71c1002b5a18aaaaae35e933368aab9b9f04"
    end
  end

  def install
    bin.install "duckdb-sbx"
  end

  test do
    assert_match "duckdb-sbx #{version}", shell_output("#{bin}/duckdb-sbx --version")
  end
end
