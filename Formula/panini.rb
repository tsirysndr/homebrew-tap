class Panini < Formula
  desc "Press a Gleam (Erlang/BEAM) app into a single self-contained binary — a Burrito for Gleam."
  homepage "https://github.com/tsirysndr/panini"
  url "https://github.com/tsirysndr/panini/releases/download/v0.2.0/panini-v0.2.0-aarch64-macos.tar.gz"
  sha256 "fcf0d44312b3900c2b1219a75a793fc73094cc0addfb13a4460f77e5a7737e90"
  version "0.2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "7aaa14f09df3df907d3f577bb49c02a41f73cb3d75de58f67168d8bb5844f9c3"
    sha256 "https://github.com/tsirysndr/panini/releases/download/v0.2.0/panini-v0.2.0-x86_64-macos.tar.gz"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/panini/releases/download/v0.2.0/panini-v0.2.0-aarch64-macos.tar.gz"
    sha256 "fcf0d44312b3900c2b1219a75a793fc73094cc0addfb13a4460f77e5a7737e90"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/panini/releases/download/v0.2.0/panini-v0.2.0-x86_64-linux.tar.gz"
    sha256 "4aac17607bfe4611002ddfd3d274b64740b6494ced52ecfea7bc2be169247fbe"
  end

  def install
    bin.install "panini"
  end
end
