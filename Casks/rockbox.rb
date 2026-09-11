cask "rockbox" do
  version "2026.09.10"
  # Bump on every release: shasum -a 256 Rockbox-#{version}-macos-aarch64.dmg
  sha256 "027a870c7b1567d0d3e358ec9a0dd955e2b8ca7da1ed46ec3d95671dab09dca5"

  url "https://github.com/tsirysndr/rockboxd/releases/download/#{version}/Rockbox-#{version}-macos-aarch64.dmg"
  name "Rockbox Desktop"
  desc "Skinnable desktop client for rockboxd, the Rockbox-based music player daemon"
  homepage "https://github.com/tsirysndr/rockboxd"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Rockbox.app"

  # The app is ad-hoc signed, not notarized, so Gatekeeper refuses to launch it
  # while the download carries a quarantine flag. Strip it on install rather
  # than making every user reach for `xattr` or right-click → Open.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Rockbox.app"]
  end

  zap trash: [
    "~/.config/rockbox.org",
    "~/Library/Saved Application State/org.rockbox.desktop.savedState",
  ]
end
