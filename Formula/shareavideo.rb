class Shareavideo < Formula
  desc "Screen recorder CLI — record, upload, and share videos"
  homepage "https://shareavideo.ai"
  license :cannot_represent

  if Hardware::CPU.arm?
    url "https://github.com/boudra/homebrew-shareavideo/releases/download/v#{version}/shareavideo-macos-aarch64.tar.gz"
    sha256 "e9617b7db3fa5cac8b6351f32dbeb7ca4663af4dcccc8dceb1136e92798f42f9"
  else
    url "https://github.com/boudra/homebrew-shareavideo/releases/download/v#{version}/shareavideo-macos-x86_64.tar.gz"
    sha256 "34bb12ea921c6f80ce01396081e1c55c70d00d3852b0723a24c6aea238480944"
  end

  def install
    bin.install "shareavideo"
  end

  test do
    assert_match "shareavideo", shell_output("#{bin}/shareavideo --help")
  end
end
