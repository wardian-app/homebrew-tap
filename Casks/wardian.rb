cask "wardian" do
  version "0.6.0"

  on_arm do
    url "https://github.com/wardian-app/Wardian/releases/download/v#{version}/Wardian_#{version}_aarch64.dmg"
    sha256 "7f15029c3be79d6641c98c5b9a621f10709d00a6f98a579ac3ae31f2ea43886e"
  end

  on_intel do
    url "https://github.com/wardian-app/Wardian/releases/download/v#{version}/Wardian_#{version}_x64.dmg"
    sha256 "2a0b5eca9439dc6d1ee50bd41a247d55be1e833ed9080f4c30db319a56d524c8"
  end

  name "Wardian"
  desc "Local command center for multi-agent CLI workflows."
  homepage "https://wardian.org"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Wardian.app"

  zap trash: [
    "~/Library/Application Support/org.wardian.desktop",
    "~/Library/Logs/org.wardian.desktop",
    "~/Library/Preferences/org.wardian.desktop.plist",
  ]
end
