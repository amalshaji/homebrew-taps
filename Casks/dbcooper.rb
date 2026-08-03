cask "dbcooper" do
  version "0.0.66"
  sha256 "0978e06d604d48ed3e9532a78bb7e78a291b33d47759746b1523e8b0cad26ec7"

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
