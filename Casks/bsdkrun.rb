cask "bsdkrun" do
  # The desktop app carries its own version (first) and ships under the CLI's
  # release tag (second). Bump both on every release:
  #   shasum -a 256 bsdkrun.Desktop_<app version>_aarch64.dmg
  version "0.1.0,0.12.0"
  sha256 "faccc2d50ae0b7cf35b181641a16224645d2ee9e5e65158b620d1d0e460e1f7d"

  url "https://github.com/tsirysndr/bsdkrun/releases/download/v#{version.csv.second}/bsdkrun.Desktop_#{version.csv.first}_aarch64.dmg"
  name "bsdkrun Desktop"
  desc "Docker Desktop-style GUI for bsdkrun microVMs (FreeBSD, NetBSD, Linux)"
  homepage "https://github.com/tsirysndr/bsdkrun"

  livecheck do
    url :url
    regex(/^bsdkrun\.Desktop[._-]v?(\d+(?:\.\d+)+)_aarch64\.dmg$/i)
    strategy :github_latest do |json, regex|
      tag = json["tag_name"]&.delete_prefix("v")
      asset = json["assets"]&.find { |a| a["name"]&.match?(regex) }
      next if tag.nil? || asset.nil?

      "#{asset["name"][regex, 1]},#{tag}"
    end
  end

  depends_on arch: :arm64
  # A thin Tauri front end: it shells out to the bsdkrun CLI (`--json` output)
  # for everything, so the GUI is useless without it.
  depends_on formula: "tsirysndr/tap/bsdkrun"
  depends_on :macos

  app "bsdkrun Desktop.app"

  # The app is ad-hoc signed, not notarized, so Gatekeeper refuses to launch it
  # while the download carries a quarantine flag. Strip it on install rather
  # than making every user reach for `xattr` or right-click → Open.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/bsdkrun Desktop.app"]
  end

  zap trash: [
    "~/Library/Application Support/dev.bsdkrun.desktop",
    "~/Library/Caches/dev.bsdkrun.desktop",
    "~/Library/Preferences/dev.bsdkrun.desktop.plist",
    "~/Library/Saved Application State/dev.bsdkrun.desktop.savedState",
    "~/Library/WebKit/dev.bsdkrun.desktop",
  ]
end
