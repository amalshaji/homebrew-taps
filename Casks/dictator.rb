cask "dictator" do
  version "0.2.0"
  sha256 "4ca1b1422d29fe5746bd7fcd0f4aaaaad2f8432eca9842137eaa807daf56b68b"

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
