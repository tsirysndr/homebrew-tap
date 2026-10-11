cask "rocksky" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "f83907d1c111416516e8ddbf7d44f8eb075e07aa5aa70110023e4b20849ca7c4",
         intel: "5df5f750bb825d678d4cec8c609cab5135388dd7cf99a0ed5c0a20d622046806"

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
