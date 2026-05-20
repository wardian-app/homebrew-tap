cask "wardian" do
  version "0.3.6"

  on_arm do
    url "https://github.com/wardian-app/Wardian/releases/download/v0.3.6/Wardian_0.3.6_aarch64.dmg"
    sha256 "130283248616672d4759f8d75138e7df1e05cf67f92487b19c69854995e679ac"
  end

  on_intel do
    url "https://github.com/wardian-app/Wardian/releases/download/v0.3.6/Wardian_0.3.6_x64.dmg"
    sha256 "2edf579110f104147393a71136771116a156e9b5e64f82fe4aa0a38f2ea23696"
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
