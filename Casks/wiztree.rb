cask "wiztree" do
  version "1.01"
  sha256 "8648e92d42aff01b5e8bb64f13f59d7dc205b5151bb609e8eb94189900823ee5"

  url "https://diskanalyzer.com/files/WizTreeMac_#{version.to_s.tr(".", "_")}.dmg"
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
