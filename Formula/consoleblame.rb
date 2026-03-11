class Consoleblame < Formula
  desc "Stream browser console output to your terminal"
  homepage "https://github.com/theomilll/consoleblame"
  url "https://github.com/theomilll/consoleblame/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9eda0368d430a2458cd72c87ecd9153e230ef7f1d11cfe509bac313f892e3c29"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/consoleblame --version")
  end
end
