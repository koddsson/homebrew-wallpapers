cask "wallpapers" do
  version "0.0.6"
  sha256 "9f7219a57b3fa2608f1ba2105a7801846def0ca8abf50c25eabd6c33f3ab5187"

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
