cask "wardian" do
  version "0.5.3"

  on_arm do
    url "https://github.com/wardian-app/Wardian/releases/download/v#{version}/Wardian_#{version}_aarch64.dmg",
        verified: "github.com/wardian-app/Wardian/"
    sha256 "aa49e2a49f31435e97b9d3bbe5695635de3986c5510b222f8c75c95e9b7aa24d"
  end

  on_intel do
    url "https://github.com/wardian-app/Wardian/releases/download/v#{version}/Wardian_#{version}_x64.dmg",
        verified: "github.com/wardian-app/Wardian/"
    sha256 "8ec6632f8660c030e432281dcec4dd07c44acc09b595e96a70d9a5b2d2c9d5b5"
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
