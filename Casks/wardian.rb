cask "wardian" do
  version "0.4.0"

  on_arm do
    url "https://github.com/wardian-app/Wardian/releases/download/v#{version}/Wardian_#{version}_aarch64.dmg",
        verified: "github.com/wardian-app/Wardian/"
    sha256 "b7b998fb7c4596d1567ff93e6b949cb9f63c5e09f08114bf6cab7bce14fc1dea"
  end

  on_intel do
    url "https://github.com/wardian-app/Wardian/releases/download/v#{version}/Wardian_#{version}_x64.dmg",
        verified: "github.com/wardian-app/Wardian/"
    sha256 "efdaa3bd5e083f5bee4e52af959030b6d67d812f37aed5faa076ac9d79072725"
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
