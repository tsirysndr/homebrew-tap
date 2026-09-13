cask "musicplayer" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.1"
  sha256 arm:   "bfbf74c90e347593b522ee036377f8fe089f536fe9668e4c69b8bb2f356f2e69",
         intel: "a4998e7fd148f5adc5d151f303a31ca19812818b2b42c54dd60a8f62d83eeb83"

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
