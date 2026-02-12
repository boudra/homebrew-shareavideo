class ShareavideoCli < Formula
  desc "CLI for Share a Video recording, auth, and uploads"
  homepage "https://github.com/boudra/shareavideo"
  url "https://github.com/boudra/homebrew-shareavideo/releases/download/v0.1.4/shareavideo-0.1.4-macos-universal.tar.gz"
  sha256 "ba600bfef755bf2140751adffd3a45e73d1ed245bc8e20283222e712f7e7c633"
  license :cannot_represent

  def install
    bin.install "shareavideo"
  end

  test do
    assert_match "OVERVIEW", shell_output("#{bin}/shareavideo --help")
  end
end
