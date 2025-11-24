cask "wallpapers" do
  version "0.0.3"
  sha256 "5a28e371fa90495acd95864aad2f02fb475fba70df5cc7ff226d0cf2db3ebae1"

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
