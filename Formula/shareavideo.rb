class Shareavideo < Formula
  desc "Screen recorder CLI — record, upload, and share videos"
  homepage "https://shareavideo.ai"
  license :cannot_represent

  if Hardware::CPU.arm?
    url "https://github.com/boudra/homebrew-shareavideo/releases/download/v#{version}/shareavideo-macos-aarch64.tar.gz"
    sha256 "8548d39bbb58506388245d04952b781b1cf68e868fdb497518298245ae9a084d"
  else
    url "https://github.com/boudra/homebrew-shareavideo/releases/download/v#{version}/shareavideo-macos-x86_64.tar.gz"
    sha256 "e3ab1c08977b72f2d38c6ea36afa361467b610e33901bc0b60c974172d6ef4ea"
  end

  def install
    bin.install "shareavideo"
  end

  test do
    assert_match "shareavideo", shell_output("#{bin}/shareavideo --help")
  end
end
