class Otelview < Formula
  desc "Self-hosted OpenTelemetry viewer in a single binary"
  homepage "https://github.com/tsirysndr/otelview"
  version "0.1.0"
  url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "d8983a702a4dc264e06dfec7eefde89ae7d411c9b33b03bbdc7f7173d9a0afb9"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "d8983a702a4dc264e06dfec7eefde89ae7d411c9b33b03bbdc7f7173d9a0afb9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c930a7737363af8dc80675274320b692b585b2df4cb55ce9c983e5478037faed"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "54ef7b563dab89ff84db649d093433d5ea28da8fc3a0dd53c6b61bdf81db02fe"
  end

  def install
    bin.install "otelview"
  end

  test do
    system "#{bin}/otelview", "--version"
  end
end
