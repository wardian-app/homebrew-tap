cask "wardian" do
  version "0.6.1"

  on_arm do
    url "https://github.com/wardian-app/Wardian/releases/download/v#{version}/Wardian_#{version}_aarch64.dmg"
    sha256 "2e373dbebe83f99e3d2080581adfa3e96eb67f0041c280babe25fc421e3f9ee4"
  end

  on_intel do
    url "https://github.com/wardian-app/Wardian/releases/download/v#{version}/Wardian_#{version}_x64.dmg"
    sha256 "629acf36080bb8bee4ef04c85d9845064b3632c66754f9061c8030ea9f39b53b"
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
