cask "rocksky" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "2594315336d31a7bf96841fd6dde8b4f6fdc05512010088a9b77d64ade05c83d",
         intel: "5d3a07053e139b47768a03841f65e83fbc6b4c0f360265464ba6a45d3f760dee"

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
