class Kickasstorrent < Formula
  desc "Command-line tool for KickassTorrents"
  homepage "https://github.com/tsirysndr/kickasstorrent"
  url "https://github.com/tsirysndr/kickasstorrent/releases/download/v0.1.7/kickasstorrent_v0.1.7_x86_64-apple-darwin.tar.gz"
  sha256 "4b972df98531b28e64e13554fe1cec60c1718ab47bca9217e7fe44bf2e332874"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tsirysndr/kickasstorrent/releases/download/v0.1.7/kickasstorrent_v0.1.7_x86_64-apple-darwin.tar.gz"
    sha256 "d4c36c5aaf86a90f8e0f7957c7738929978896052b56d8c1f041a985da7b941c"
  end

  def install
    bin.install "kickasstorrent"
  end
end
