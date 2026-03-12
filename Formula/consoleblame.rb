class Consoleblame < Formula
  desc "Stream browser console output to your terminal"
  homepage "https://github.com/theomilll/consoleblame"
  url "https://github.com/theomilll/consoleblame/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "ab50ded3dc05361352c4ef536fe15350991bd84d2fd29853874a5422800b302b"
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
