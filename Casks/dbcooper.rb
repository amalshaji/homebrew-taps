cask "dbcooper" do
  version "0.0.56"
  sha256 "84d69afa27ca583a24aee7c92eb34a875840ad47c3cf2dedbde1ff5940043cb6"

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
  depends_on macos: ">= :catalina"

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
