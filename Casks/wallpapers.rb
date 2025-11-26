cask "wallpapers" do
  version "0.0.5"
  sha256 "755713180ce2a25c3e2666815cef514b4743058589d8f68b2354779236457cff"

  url "https://github.com/koddsson/homebrew-wallpapers/releases/download/v#{version}/workbrew-wallpapers-#{version}.zip",
      verified: "github.com/koddsson/homebrew-wallpapers/"

  name "Workbrew Wallpapers"
  desc "Unofficial Workbrew company wallpaper collection"

  depends_on cask: "desktoppr"

  artifact "Wallpapers", target: "/Users/Shared/WorkbrewWallpapers"

  postflight do
    desktoppr_path = "/usr/local/bin/desktoppr"

    system_command desktoppr_path,
                   args: ["/Users/Shared/WorkbrewWallpapers"],
                   sudo: false
  end
end
