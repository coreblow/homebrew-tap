class Coreblow < Formula
  desc "Sovereign Autonomous Agent-OS & Enterprise AI Gateway CLI"
  homepage "https://coreblow.com"
  url "https://registry.npmjs.org/coreblow/-/coreblow-2.1.4.tgz"
  sha256 "793ccb921892740ca942e04be8f754f6cc1207c3d1be3a39936ac25c20dccfc5"
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
