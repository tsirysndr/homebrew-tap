cask "musicplayer" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.3"
  sha256 arm:   "1bb0e80d151f272f38be33c2baecdec4c206d3a0561ebc3976f57839134766d9",
         intel: "b1fab3b93feb891b074934d4b06b0eafe4f40adf388e1f01529f4898a447dbc5"

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
