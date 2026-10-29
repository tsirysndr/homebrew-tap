cask "musicplayer" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.7"
  sha256 arm:   "94af0f9a6719f9b60929a864fd2f8bbc4b98528484eb9b5ca55d7540ebf145b9",
         intel: "633532c88e09d40ed52f55027421789e2cab9bde3a0af5d3ff75760b7f71f7df"

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
