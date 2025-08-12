cask "pocket-sync" do
  name "Pocket Sync"
  desc "GUI tool for doing stuff with the Analogue Pocket"
  homepage "https://github.com/neil-morrison44/pocket-sync"

  version "5.7.5"
  url "https://github.com/neil-morrison44/pocket-sync/releases/download/v#{version}/Pocket.Sync_#{version}_universal.dmg"
  sha256 "d11aa984c67285b123f87725b85fae2bf160d28563f1fdb0d373b979d0680856"

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
