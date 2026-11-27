class Coreblow < Formula
  desc "Sovereign Autonomous Agent-OS & Enterprise AI Gateway CLI"
  homepage "https://coreblow.com"
  url "https://registry.npmjs.org/coreblow/-/coreblow-2.5.0.tgz"
  sha256 "ed057d910a883fd66038d59be77b429c5a3c07a70cad0849b3f01c8fe9f2fa1b"
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
