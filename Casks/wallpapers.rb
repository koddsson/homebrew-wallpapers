cask "wallpapers" do
  version "0.0.0"
  sha256 "TO_BE_AUTO_UPDATED"

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
