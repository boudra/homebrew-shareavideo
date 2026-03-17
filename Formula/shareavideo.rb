class Shareavideo < Formula
  desc "Screen recorder CLI — record, upload, and share videos"
  homepage "https://shareavideo.ai"
  license :cannot_represent

  if Hardware::CPU.arm?
    url "https://github.com/boudra/homebrew-shareavideo/releases/download/v#{version}/shareavideo-macos-aarch64.tar.gz"
    sha256 "719e027c0f8d019e9bb630c4de76528449e7e54e97791c3c1ecad64208373731"
  else
    url "https://github.com/boudra/homebrew-shareavideo/releases/download/v#{version}/shareavideo-macos-x86_64.tar.gz"
    sha256 "1d8442e7458bd6d960b11f08e29f114548a0cb0b16195885ad3147011035ed85"
  end

  def install
    bin.install "shareavideo"
  end

  test do
    assert_match "shareavideo", shell_output("#{bin}/shareavideo --help")
  end
end
