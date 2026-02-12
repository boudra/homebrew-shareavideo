class ShareavideoCli < Formula
  desc "CLI for Share a Video recording, auth, and uploads"
  homepage "https://github.com/boudra/shareavideo"
  url "https://github.com/boudra/homebrew-shareavideo/releases/download/v0.1.8/shareavideo-0.1.8-macos-universal.tar.gz"
  sha256 "1e6b229e3e0a8b7bde8de646f4ffc99935a17ba25c06c1a19d87e78f6b1b53aa"
  license :cannot_represent

  def install
    bin.install "shareavideo"
  end

  test do
    assert_match "OVERVIEW", shell_output("#{bin}/shareavideo --help")
  end
end
