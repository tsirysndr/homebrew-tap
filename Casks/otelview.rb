cask "otelview" do
  version "0.2.0"
  sha256 "c19572e90a6efeee17d8f7774593ae49f4c311c80047e06a0d8b6af0ca51eec0"

  url "https://github.com/tsirysndr/otelview/releases/download/v#{version}/otelview-desktop-v#{version}-macos-arm64.dmg"
  name "OtelView Desktop"
  desc "Desktop app for OtelView, the self-hosted OpenTelemetry viewer"
  homepage "https://github.com/tsirysndr/otelview"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "otelview-desktop.app"

  # The app is ad-hoc signed, not notarized, so Gatekeeper refuses to launch it
  # while the download carries a quarantine flag. Strip it on install rather
  # than making every user reach for `xattr` or right-click → Open.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/otelview-desktop.app"]
  end

  zap trash: [
    "~/Library/Saved Application State/dev.otelview.desktop.savedState",
  ]
end
