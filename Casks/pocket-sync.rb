cask "pocket-sync" do
  name "Pocket Sync"
  desc "GUI tool for doing stuff with the Analogue Pocket"
  homepage "https://github.com/neil-morrison44/pocket-sync"
  
  version "5.5.0"
  url "https://github.com/neil-morrison44/pocket-sync/releases/download/v#{version}/Pocket.Sync_#{version}_universal.dmg"
  sha256 "452af252f1f1aaf18e10cf5e438f99f9b7ae2e28da05b985e58039dd3282deb9"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Pocket Sync.app"

  zap trash: [
    "~/Library/Application Support/today.neil.pocket-sync",
    "~/Library/Logs/today.neil.pocket-sync",
    "~/Library/Preferences/today.neil.pocket-sync.plist",
    "~/Library/Saved Application State/dixa.savedState",
  ]
end
