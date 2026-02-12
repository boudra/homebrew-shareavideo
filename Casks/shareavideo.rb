cask "shareavideo" do
  version "0.1.9"
  sha256 "5e39dfad22d31c804204aeb0de1b6e01e7b98cc368025e7086991912094fb2c5"

  url "https://github.com/boudra/homebrew-shareavideo/releases/download/v0.1.9/ShareAVideo.dmg"
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
