class Coreblow < Formula
  desc "Sovereign Autonomous Agent-OS & Enterprise AI Gateway CLI"
  homepage "https://coreblow.com"
  url "https://registry.npmjs.org/coreblow/-/coreblow-2.6.0.tgz"
  sha256 "1b3f0c3cf65aa22678eb7636493d102d750e9f48da28c59b516750d677af53e3"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "CoreBlow", shell_output("#{bin}/coreblow --version")
  end
end
