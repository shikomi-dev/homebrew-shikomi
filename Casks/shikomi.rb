cask "shikomi" do
  version "0.1.1"
  sha256 "b7d3e0726147453b404d6e477438e31084b0908e1a228320de5bc25e87152a4d"

  url "https://github.com/shikomi-dev/shikomi/releases/download/v\#{version}/shikomi_\#{version}_aarch64.dmg"
  name "shikomi"
  desc "Global hotkey clipboard manager --- paste registered strings into any app instantly"
  homepage "https://github.com/shikomi-dev/shikomi"

  depends_on macos: ">= :monterey"

  app "shikomi.app"

  uninstall quit: "dev.shikomi.gui"

  zap trash: [
    "~/Library/Application Support/dev.shikomi.gui",
    "~/.local/share/shikomi",
  ]
end
