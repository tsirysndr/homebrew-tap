class Otelview < Formula
  desc "Self-hosted OpenTelemetry viewer in a single binary"
  homepage "https://github.com/tsirysndr/otelview"
  version "0.1.3"
  url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "f51ab6364d4d8c3925f214c0e844c31d83f6c7354c6cb251ba4110266da4986e"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "f51ab6364d4d8c3925f214c0e844c31d83f6c7354c6cb251ba4110266da4986e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8f8d96018b3e62a1e2de92eefed9614a29bb7b1d3942cbe4205b6898355b7ed4"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "196ed93b6b9b5074292eac6c5bda4ba412fd4675f1bc2dfcf5f5d8ffc16a2e1b"
  end

  def install
    bin.install "otelview"
  end

  test do
    system "#{bin}/otelview", "--version"
  end
end
