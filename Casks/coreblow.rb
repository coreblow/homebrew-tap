cask "coreblow" do
  version "2.0.0"
  sha256 "cb2a083d5d48cca9deca4d4bc6c89cc42c43898a4c95fd37b1ee097526e548a9"

  url "https://github.com/coreblow/coreblow/releases/download/v#{version}/CoreBlow-#{version}-arm64.dmg"
  name "CoreBlow Studio"
  desc "Sovereign Autonomous Agent-OS, War Room DAG & Desktop Studio Cockpit"
  homepage "https://coreblow.com"

  livecheck do
    url "https://github.com/coreblow/coreblow/releases.atom"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "CoreBlow.app"

  zap trash: [
    "~/.coreblow",
    "~/Library/Application Support/CoreBlow",
    "~/Library/Caches/ai.coreblow.studio",
    "~/Library/Preferences/ai.coreblow.studio.plist",
    "~/Library/Saved Application State/ai.coreblow.studio.savedState",
  ]
end
