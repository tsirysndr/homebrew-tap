class Smolsonic < Formula
  desc "A tiny Subsonic server in Rust"
  homepage "https://github.com/tsirysndr/smolsonic"
  url "https://github.com/tsirysndr/smolsonic/releases/download/v0.6.0/smolsonic-v0.6.0-macos-aarch64.tar.gz"
  sha256 "46f225073e0fa78cbb0324e4d4f1aebdcd1a098a0a73a57793baffb0bdc2e9e7"
  version "0.6.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.6.0/smolsonic-v0.6.0-macos-amd64.tar.gz"
    sha256 "41873cf0a77136a16bb37b28c1a435c0f1d4f187feeb5ce451549d8af6ecd9b2"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.6.0/smolsonic-v0.6.0-macos-aarch64.tar.gz"
    sha256 "46f225073e0fa78cbb0324e4d4f1aebdcd1a098a0a73a57793baffb0bdc2e9e7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/smolsonic/releases/download/v0.6.0/smolsonic-v0.6.0-linux-amd64.tar.gz"
    sha256 "b580f3056acc21f1c21eb0d4e2fd3d553f3672c05e6f33e34bcf385324b91351"
  end

  def install
    bin.install "smolsonic"
  end
end
