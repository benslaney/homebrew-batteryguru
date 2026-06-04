cask "battery-guru" do
  version "2.0.0"
  sha256 "559fa3a276f2ab8204b20b10258989e8fff2992182a4b917d3efdc7793fc7e92"

  url "https://macdaddy.io/downloads/BatteryGuru.zip",
      verified: "macdaddy.io/"
  name "Battery Guru"
  desc "Menu bar battery monitor with live power draw, charge, and health stats"
  homepage "https://macdaddy.io/mac-battery-guru/"

  livecheck do
    url "https://macdaddy.io/downloads/battery-guru-version.txt"
    strategy :page_match
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :sonoma

  app "Battery Guru.app"

  zap trash: [
    "~/Library/Caches/io.macdaddy.batteryguru",
    "~/Library/HTTPStorages/io.macdaddy.batteryguru",
    "~/Library/Preferences/io.macdaddy.batteryguru.plist",
  ]
end
