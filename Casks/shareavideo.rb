cask "shareavideo" do
  version "0.1.8"
  sha256 "63f167c174d6cd66988b081cf6a60b2c4bf3ebf6db9516ad9edbf3115f9fff8f"

  url "https://github.com/boudra/homebrew-shareavideo/releases/download/v#{version}/ShareAVideo.dmg"
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
