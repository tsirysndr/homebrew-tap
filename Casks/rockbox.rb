cask "rockbox" do
  version "2026.09.10"
  sha256 "2bb1433bf99ad3a09057c810cd49e02ae607d92161fec21e42b5c0f417ac4e70"

  url "https://github.com/tsirysndr/rockboxd/releases/download/#{version}/rockbox-desktop-#{version}-macos-aarch64.tar.gz"
  name "Rockbox Desktop"
  desc "Skinnable desktop client for rockboxd, the Rockbox-based music player daemon"
  homepage "https://github.com/tsirysndr/rockboxd"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  binary "rockbox-desktop-#{version}-macos-aarch64/rockbox-desktop"

  zap trash: "~/.config/rockbox.org"
end
