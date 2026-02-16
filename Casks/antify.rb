cask "antify" do
  version "0.0.31"
  sha256 "c57f7fc119e956ee778d6006dc40306fadee08baab16a4acc3fc139da29a4b45"

  url "https://r2.antifyapp.com/releases/v#{version}/Antify.dmg"
  name "Antify"
  desc "Per-app transparent proxy for macOS"
  homepage "https://antifyapp.com"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Antify.app"

  zap trash: [
    "~/Library/Application Support/Antify",
    "~/Library/Preferences/com.lester.Antify.plist",
    "~/Library/Group Containers/group.app.com.lester.Antify",
  ]
end
