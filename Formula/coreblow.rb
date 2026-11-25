class Coreblow < Formula
  desc "Sovereign Autonomous Agent-OS & Enterprise AI Gateway CLI"
  homepage "https://coreblow.com"
  url "https://registry.npmjs.org/coreblow/-/coreblow-2.1.5.tgz"
  sha256 "2c42a123582aa86e2b2282d4f0453d8422389a77cd65e81afdcc08ace893eea5"
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
