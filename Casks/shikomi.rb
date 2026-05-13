cask "shikomi" do
  version "0.1.0"
  sha256 "ee8789a76e6f832bbe821316182bcf5e895facc4af1d9d28dcf49a1846ff9e84"

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
