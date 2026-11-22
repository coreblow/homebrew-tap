class Coreblow < Formula
  desc "Sovereign Autonomous Agent-OS & Enterprise AI Gateway CLI"
  homepage "https://coreblow.com"
  url "https://registry.npmjs.org/coreblow/-/coreblow-2.1.2.tgz"
  sha256 "7c659ddcbf23deefba63de137ff9a86e4c472167f99b4d8b213afbe0805b1eaf"
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
