cask "rocksky" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "96e154ce63d9f2b45f914f9593a4be296b4783fd3fba43cf38242131db64bc1b",
         intel: "38fced45c19409725e3fc97dd347c12c1369bb41827c7dd85364995603fc0461"

  url "https://github.com/tsirysndr/rocksky/releases/download/desktop-v#{version}/Rocksky_#{version}_#{arch}.dmg"
  name "Rocksky"
  desc "Decentralized music tracking and discovery platform built on AT Protocol"
  homepage "https://github.com/tsirysndr/rocksky"

  livecheck do
    url :url
    regex(/^desktop[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :git
  end

  depends_on :macos

  app "Rocksky.app"

  # The app is ad-hoc signed, not notarized, so Gatekeeper refuses to launch it
  # while the download carries a quarantine flag. Strip it on install rather
  # than making every user reach for `xattr` or right-click → Open.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Rocksky.app"]
  end

  zap trash: [
    "~/Library/Application Support/app.rocksky.desktop",
    "~/Library/Caches/app.rocksky.desktop",
    "~/Library/Preferences/app.rocksky.desktop.plist",
    "~/Library/Saved Application State/app.rocksky.desktop.savedState",
    "~/Library/WebKit/app.rocksky.desktop",
  ]
end
