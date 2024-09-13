cask "pocket-sync" do
  version "4.12.1"
  sha256 :no_check

  url "https://github.com/neil-morrison44/pocket-sync/releases/download/v#{version}/Pocket.Sync_#{version}_universal.dmg"
  name "Pocket Sync"
  desc "GUI tool for doing stuff with the Analogue Pocket"
  homepage "https://github.com/neil-morrison44/pocket-sync"

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
