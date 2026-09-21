class Otelview < Formula
  desc "Self-hosted OpenTelemetry viewer in a single binary"
  homepage "https://github.com/tsirysndr/otelview"
  version "0.2.0"
  url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "9148d5084e075933f11d5ad2e3ca165b4035da52e34120574cef0816a54665bb"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "9148d5084e075933f11d5ad2e3ca165b4035da52e34120574cef0816a54665bb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5bcacb11ff4040b2337ef9b77b4ebea5e9155df9105ef47944817cb2c77804a0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "f27f35bd2b8800cacac5edcb6c9231c8a03d95512f029299a0e50bf4f10dfe3b"
  end

  def install
    bin.install "otelview"
  end

  test do
    system "#{bin}/otelview", "--version"
  end
end
