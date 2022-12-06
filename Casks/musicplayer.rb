cask "musicplayer" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0-alpha.8"
  sha256 arm:   "a9f97062b241eb512f8f07a4cf46c3983d92c571edc7fa6da41c0227ab1252f4",
         intel: "f37ad80174e28fba6aa27b427409d26cfa8c8c72898ab5412bbaa5b21660b83c"

  url "https://github.com/tsirysndr/music-player/releases/download/v#{version}/Music_Player_v#{version}_#{arch}.dmg"
  name "musicplayer"
  desc "Music Player Desktop App"
  homepage "https://github.com/tsirysndr/music-player"

  app "Music Player.app"

  zap trash: []
end