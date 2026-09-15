cask "musicplayer" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.4"
  sha256 arm:   "cf6811c7854006561e480e3db613934ad120483bd884352e2173df20af8d79b9",
         intel: "9e6474b872bc0a0905c55e8cfe0a10dce7e3d8601e628e1921482e85a5d43f98"

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
