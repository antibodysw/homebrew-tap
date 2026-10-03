cask "wiztree" do
  version "1.00"
  sha256 "557395cc5fbc2c3acdd3e948352ed64d53ca9e11cff2045a74b6fe46a15ed15c"

  url "https://diskanalyzer.com/files/WizTreeMac_#{version.tr(".", "_")}.dmg"
  name "WizTreeMac"
  desc "Disk space analyzer that shows what's taking up space on your drive"
  homepage "https://diskanalyzer.com/"

  livecheck do
    skip "No version feed; update manually per release"
  end

  depends_on macos: :monterey

  app "WizTreeMac.app"

  zap trash: [
    "~/Library/Caches/com.wiztreemac.app",
    "~/Library/Preferences/com.wiztreemac.app.plist",
  ]
end
