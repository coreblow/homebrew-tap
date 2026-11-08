cask "coreblow" do
  version "2.0.0"
  sha256 "e815a9fd9c789cabc57a2af9577b47bc5371478e44969de35ec3c665ef156482"

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
