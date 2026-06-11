class Zerod < Formula
  desc "Headless gRPC daemon for Linux audio: Bluetooth, HLS/DASH and systemd"
  homepage "https://github.com/tsirysndr/zerod"
  url "https://github.com/tsirysndr/zerod/releases/download/v0.1.0/zerod-aarch64-apple-darwin.tar.gz"
  sha256 "332ae899e41faac843a3e8bd9d4d112a5b751f6fabdc27e42faf77fe4132fa00"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/zerod/releases/download/v0.1.0/zerod-x86_64-apple-darwin.tar.gz"
    sha256 "6d1ccc44e98b9709cd6558c771b69372c96f68bcb52f28ecb3d7dbbf6b487507"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tsirysndr/zerod/releases/download/v0.1.0/zerod-aarch64-apple-darwin.tar.gz"
    sha256 "332ae899e41faac843a3e8bd9d4d112a5b751f6fabdc27e42faf77fe4132fa00"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/zerod/releases/download/v0.1.0/zerod-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9f7f4e036754147acb41612212e5978c20c78961d3c61509589619a25cc067d4"
  end

  def install
    bin.install "zerod"
  end
end
