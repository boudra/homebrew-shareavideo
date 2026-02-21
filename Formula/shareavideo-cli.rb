class ShareavideoCli < Formula
  desc "CLI for Share a Video recording, auth, and uploads"
  homepage "https://github.com/boudra/shareavideo"
  url "https://github.com/boudra/homebrew-shareavideo/releases/download/v0.1.11/shareavideo-0.1.11-macos-universal.tar.gz"
  sha256 "7998d555ac6fd7a1cf908f96759c4e9ca7ee001fa56df40aec519eb25d95d2c3"
  license :cannot_represent

  def install
    bin.install "shareavideo"
  end

  test do
    assert_match "OVERVIEW", shell_output("#{bin}/shareavideo --help")
  end
end
