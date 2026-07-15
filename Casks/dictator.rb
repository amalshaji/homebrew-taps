cask "dictator" do
  version "0.4.0"
  sha256 "e79a5019b3b47012a33e775b82be772eaa2d9814e44566f90df8afb8c799a79f"

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
