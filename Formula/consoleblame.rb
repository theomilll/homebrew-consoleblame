class Consoleblame < Formula
  desc "Stream browser console output to your terminal"
  homepage "https://github.com/theomilll/consoleblame"
  url "https://github.com/theomilll/consoleblame/archive/5ae476a4af6d3d52203123f3c16ffb80cc734d04.tar.gz"
  version "0.1.0"
  sha256 "d58d8fbafdf1f750e359e858fb961ed70fe811e3091e5b8cc149f3e335d1ebb8"
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
