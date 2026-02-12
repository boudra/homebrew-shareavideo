cask "shareavideo" do
  version "0.1.4"
  sha256 "1493eb264b3fa53330fa34eb76051942d506e41f3e28e5dd225eadeea70f80cb"

  url "https://github.com/boudra/shareavideo/releases/download/v#{version}/ShareAVideo.dmg"
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
