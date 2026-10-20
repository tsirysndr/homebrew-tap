cask "musicplayer" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.5"
  sha256 arm:   "40a05024950f14c8de7a789b9327c8de704045315c9b1e9a8fee6b9ab7d6b605",
         intel: "680ccd6cd4fef76a7b9f14b55185b3e7f253085354c42349e5ea1009e87a382c"

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
