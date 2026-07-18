cask "dictator" do
  version "0.6.1"
  sha256 "93bfb938e1d7f0b7c533ecb2d6e8524b29a73f15470908e74498b02b557770b1"

  url "https://github.com/amalshaji/dictator/releases/download/v#{version}/Dictator-#{version}-universal.dmg"
  name "Dictator"
  desc "Bring-your-own-key dictation with configurable speech providers"
  homepage "https://github.com/amalshaji/dictator"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Dictator.app"

  postflight do
    system "/usr/bin/xattr", "-dr", "com.apple.quarantine", "#{appdir}/Dictator.app"
  end

  zap trash: [
    "~/Library/Application Support/Dictator",
    "~/Library/Caches/ai.dictator.app",
    "~/Library/Preferences/ai.dictator.app.plist",
    "~/Library/Saved Application State/ai.dictator.app.savedState",
  ]
end
