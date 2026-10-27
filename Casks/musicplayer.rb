cask "musicplayer" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.6"
  sha256 arm:   "109c8a445dfb3f8c43154d21c6ec01348a2ec28cfa6c2e58b42ee53c368259da",
         intel: "28c599ebf74887cf26e819ce8c99b7f7f38696f1a28019067762d4b7200f3fce"

  url "https://github.com/tsirysndr/music-player/releases/download/v#{version}/music-player-desktop_v#{version}_#{arch}-apple-darwin.tar.gz"
  name "musicplayer"
  desc "Desktop app for playing and streaming your local music library"
  homepage "https://github.com/tsirysndr/music-player"

  depends_on macos: :big_sur

  app "macos/Music Player.app"

  # The app is ad-hoc signed, not notarized, so Gatekeeper refuses to launch it
  # while the download carries a quarantine flag. Strip it on install rather
  # than making every user reach for `xattr` or right-click → Open.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Music Player.app"]
  end

  zap trash: []
end
