cask "musicplayer" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.0"
  sha256 arm:   "fde1d7625cedba9b66cac5684fabfe51b5005755d4b6324ee5399eaed7236da1",
         intel: "3a3b312d90ad39d4509d2fed16cfbc0f86f402f3f498295f4be787150e8d63a2"

  url "https://github.com/tsirysndr/music-player/releases/download/v#{version}/music-player-desktop_v#{version}_#{arch}-apple-darwin.tar.gz"
  name "musicplayer"
  desc "Desktop app for playing and streaming your local music library"
  homepage "https://github.com/tsirysndr/music-player"

  depends_on macos: :big_sur

  app "macos/Music Player.app"

  zap trash: []
end
