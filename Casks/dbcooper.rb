cask "dbcooper" do
  version "0.0.64"
  sha256 "18ac949757fcaf7118b35eb447f56f2026ada2b805e8b38dd22142139efee722"

  url "https://github.com/amalshaji/dbcooper/releases/download/v#{version}/DBcooper_#{version}_aarch64.dmg"
  name "DBcooper"
  desc "Modern, fast database client for developers"
  homepage "https://github.com/amalshaji/dbcooper"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "DBcooper.app"

  postflight do
    system "xattr", "-dr", "com.apple.quarantine", "#{appdir}/DBcooper.app"
  end

  zap trash: [
    "~/Library/Application Support/com.amalshaji.dbcooper",
    "~/Library/Caches/com.amalshaji.dbcooper",
    "~/Library/Preferences/com.amalshaji.dbcooper.plist",
    "~/Library/Saved Application State/com.amalshaji.dbcooper.savedState",
  ]
end
