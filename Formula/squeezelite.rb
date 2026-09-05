class Squeezelite < Formula
  desc "Lightweight headless Squeezebox player for Lyrion Music Server"
  homepage "https://github.com/tsirysndr/squeezelite"
  url "https://github.com/tsirysndr/squeezelite/releases/download/v2.0.0-1488/squeezelite-v2.0.0-1488-aarch64-macos.tar.gz"
  sha256 "49f5bc362a507f97c35b76fb8399dd89d526362d29e9554ac49ed7d0097ff4a7"
  version "2.0.0-1488"

  depends_on "portaudio"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/squeezelite/releases/download/v2.0.0-1488/squeezelite-v2.0.0-1488-x86_64-macos.tar.gz"
    sha256 "5bf0123b379d5a418846cbb646ce9a49bbc717167dd2aafb34fc0c9a287952e5"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/squeezelite/releases/download/v2.0.0-1488/squeezelite-v2.0.0-1488-aarch64-macos.tar.gz"
    sha256 "49f5bc362a507f97c35b76fb8399dd89d526362d29e9554ac49ed7d0097ff4a7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/squeezelite/releases/download/v2.0.0-1488/squeezelite-v2.0.0-1488-x86_64-linux.tar.gz"
    sha256 "7b554263c325fd86c896d62d7d0d581da965c47c472a39ac7d62ae9d5669b0f2"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/squeezelite/releases/download/v2.0.0-1488/squeezelite-v2.0.0-1488-aarch64-linux.tar.gz"
    sha256 "f9d2113f8ca0c4616e1dd30118fe7d1792ff83ce3fce94049e170652025eb4a8"
  end

  def install
    bin.install "squeezelite"
  end
end
