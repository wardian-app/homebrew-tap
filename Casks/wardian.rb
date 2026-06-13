cask "wardian" do
  version "0.4.1"

  on_arm do
    url "https://github.com/wardian-app/Wardian/releases/download/v#{version}/Wardian_#{version}_aarch64.dmg",
        verified: "github.com/wardian-app/Wardian/"
    sha256 "c38c9ae61ad06a5ca78333950a4e84e0b377108c92d6733bf0afe080217b5b75"
  end

  on_intel do
    url "https://github.com/wardian-app/Wardian/releases/download/v#{version}/Wardian_#{version}_x64.dmg",
        verified: "github.com/wardian-app/Wardian/"
    sha256 "8f5388904921cf80880172b55b1703327775a8e9ad03e07e7cb745be6d20361d"
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
