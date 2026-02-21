cask "shareavideo" do
  version "0.1.11"
  sha256 "32c00bfc25aa9a36a363b6d6abb29ab8c08043a09b2c5a43bccd73c0bdf0a805"

  url "https://github.com/boudra/homebrew-shareavideo/releases/download/v0.1.11/ShareAVideo.dmg"
  name "Share a Video"
  desc "Lightweight macOS screen recorder"
  homepage "https://github.com/boudra/shareavideo"

  depends_on formula: "shareavideo-cli"
  auto_updates true
  app "Share a Video.app"

  zap trash: [
    "~/.config/shareavideo",
    "~/.local/state/shareavideo",
  ]
end
