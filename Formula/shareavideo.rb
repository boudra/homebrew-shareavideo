class Shareavideo < Formula
  desc "Screen recorder CLI — record, upload, and share videos"
  homepage "https://shareavideo.ai"
  license :cannot_represent

  if Hardware::CPU.arm?
    url "https://github.com/boudra/homebrew-shareavideo/releases/download/v#{version}/shareavideo-macos-aarch64.tar.gz"
    sha256 "3c36d2a9729fc4f4d1490d706a6af55d6c316076d5dcd59fe25b2f002ce6b59f"
  else
    url "https://github.com/boudra/homebrew-shareavideo/releases/download/v#{version}/shareavideo-macos-x86_64.tar.gz"
    sha256 "e3a3bc22409e8157fdb118d17f73ae80684df6bda431e9e73533c66117fb688b"
  end

  def install
    bin.install "shareavideo"
  end

  test do
    assert_match "shareavideo", shell_output("#{bin}/shareavideo --help")
  end
end
