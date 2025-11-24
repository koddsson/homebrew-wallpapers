cask "wallpapers" do
  version "0.0.4"
  sha256 "81307a2ad3ca0f6b68924df42c0cdb200a2d950288ed6eb1825164a0d8ffcbb4"

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
