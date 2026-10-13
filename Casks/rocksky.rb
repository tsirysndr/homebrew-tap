cask "rocksky" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "5ab5ea470712b3587e56c0e198c22285af733b4ff9595fad206202c0260a29b2",
         intel: "561f0bf64ffa623dbda31eb4a1911a7b85e2dae2b49e7fe55fccb869dfe9440b"

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
