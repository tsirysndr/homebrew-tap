cask "musicplayer" do
  version "0.2.0-alpha.8"
  sha256 "f37ad80174e28fba6aa27b427409d26cfa8c8c72898ab5412bbaa5b21660b83c"

  url "https://github.com/tsirysndr/music-player/releases/download/#{version}/Music_Player_#{version}_x64.dmg"
  name "musicplayer"
  desc "Music Player Desktop App"
  homepage "https://github.com/tsirysndr/music-player"

  app "Music Player.app"

  zap trash: []
end