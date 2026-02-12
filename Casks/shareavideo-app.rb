cask "shareavideo-app" do
  version :latest
  sha256 :no_check

  url "https://github.com/boudra/shareavideo/releases/latest/download/ShareAVideo.dmg"
  name "Share a Video"
  desc "Lightweight macOS screen recorder"
  homepage "https://github.com/boudra/shareavideo"

  auto_updates true
  app "Share a Video.app"

  zap trash: [
    "~/.config/shareavideo",
    "~/.local/state/shareavideo",
  ]
end
