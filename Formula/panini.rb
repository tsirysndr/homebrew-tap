class Panini < Formula
  desc "Press a Gleam (Erlang/BEAM) app into a single self-contained binary — a Burrito for Gleam."
  homepage "https://github.com/tsirysndr/panini"
  url "https://github.com/tsirysndr/panini/releases/download/v0.1.0/panini-v0.1.0-aarch64-macos.tar.gz"
  sha256 "84c01b3d9fb570f4ff6f908b89dccfe3f11b5214504d1f29f7d3a93f9aca5891"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "60d5b1a8d639907ac594e9c73fe851454bc532bf5f2acdfd1c6da49564fe79a4"
    sha256 "https://github.com/tsirysndr/panini/releases/download/v0.1.0/panini-v0.1.0-x86_64-macos.tar.gz"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/panini/releases/download/v0.1.0/panini-v0.1.0-aarch64-macos.tar.gz"
    sha256 "84c01b3d9fb570f4ff6f908b89dccfe3f11b5214504d1f29f7d3a93f9aca5891"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/panini/releases/download/v0.1.0/panini-v0.1.0-x86_64-linux.tar.gz"
    sha256 "ba14af9d9625f9f669d106eee7ed634bea2cc03287b4924d6ccaa241e35e86fd"
  end

  def install
    bin.install "panini"
  end
end
