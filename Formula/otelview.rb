class Otelview < Formula
  desc "Self-hosted OpenTelemetry viewer in a single binary"
  homepage "https://github.com/tsirysndr/otelview"
  version "0.2.1"
  url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "3b40fd365c452cd9033b11d698a04f9b11721fb1e280c77c795deeb1108cfd16"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "3b40fd365c452cd9033b11d698a04f9b11721fb1e280c77c795deeb1108cfd16"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "033bf82ec7153d1be7816c9a8544e710055ad60ea556e050596082808187d9d7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "c95538ac94e00b7feed6565134242bdd752af1cede64a46b676728b5fcbb14ac"
  end

  def install
    bin.install "otelview"
  end

  test do
    system "#{bin}/otelview", "--version"
  end
end
