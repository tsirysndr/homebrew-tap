cask "rocksky" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.3"
  sha256 arm:   "42cf2b6ad3c144a06ee0f806f2336f339010f90cf4f6b47f8a90a5013d0b9bfc",
         intel: "ff22a43762e09a14ecc3f361bf9ec8d194458c71603edf2cef200e56ff5fd9dc"

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
