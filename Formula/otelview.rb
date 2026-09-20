class Otelview < Formula
  desc "Self-hosted OpenTelemetry viewer in a single binary"
  homepage "https://github.com/tsirysndr/otelview"
  version "0.1.4"
  url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "7687070c4cde2da80dfd27e40fae7488b8074d3a2243af663d16bf0b46931e15"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "7687070c4cde2da80dfd27e40fae7488b8074d3a2243af663d16bf0b46931e15"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "29ffcd55ae49cdebd33ee8b112e94d4ffe0043be178cbcc0483de7d9b0e3793b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "188e03249fb39b4814d8ef6b53b3f5824897dcb12304b3b7bb04cd8dcdf55ffd"
  end

  def install
    bin.install "otelview"
  end

  test do
    system "#{bin}/otelview", "--version"
  end
end
