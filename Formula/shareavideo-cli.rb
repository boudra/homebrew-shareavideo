class ShareavideoCli < Formula
  desc "CLI for Share a Video recording, auth, and uploads"
  homepage "https://github.com/boudra/shareavideo"
  url "https://github.com/boudra/homebrew-shareavideo/releases/download/v0.1.9/shareavideo-0.1.9-macos-universal.tar.gz"
  sha256 "dcad8e9c220d3c542cb861f1d57b9585b2f95034101111d60a789a1b4a826343"
  license :cannot_represent

  def install
    bin.install "shareavideo"
  end

  test do
    assert_match "OVERVIEW", shell_output("#{bin}/shareavideo --help")
  end
end
