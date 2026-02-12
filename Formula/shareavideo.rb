class Shareavideo < Formula
  desc "CLI for Share a Video recording, auth, and uploads"
  homepage "https://github.com/boudra/shareavideo"
  url "https://github.com/boudra/shareavideo/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "Unlicense"

  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--product", "shareavideo"
    bin.install ".build/release/shareavideo"
  end

  test do
    assert_match "OVERVIEW", shell_output("#{bin}/shareavideo --help")
  end
end
