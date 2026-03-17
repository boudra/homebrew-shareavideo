class Shareavideo < Formula
  desc "Screen recorder CLI — record, upload, and share videos"
  homepage "https://shareavideo.ai"
  license :cannot_represent

  if Hardware::CPU.arm?
    url "https://github.com/boudra/homebrew-shareavideo/releases/download/v#{version}/shareavideo-macos-aarch64.tar.gz"
    sha256 "9e0a557e7004900e6e82dec81eec39cb0e3e2b85e2c29bc45e78946cf4f9cd46"
  else
    url "https://github.com/boudra/homebrew-shareavideo/releases/download/v#{version}/shareavideo-macos-x86_64.tar.gz"
    sha256 "e82f2f06f02a79f41a2d08ffa0b38a0d404d68c9424c2996c56419b5d9db1f32"
  end

  def install
    bin.install "shareavideo"
  end

  test do
    assert_match "shareavideo", shell_output("#{bin}/shareavideo --help")
  end
end
