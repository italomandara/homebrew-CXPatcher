cask "cxpatcher" do
  version "0.5.10"
  sha256 "16d4d9e56dd9673d5e517c460dcc3488401f026c0ebca8bbc10bd0b5182a2d8c"

  url "https://github.com/italomandara/CXPatcher/releases/download/v#{version}/CXPatcher.app.zip"
  name "CXPatcher"
  desc "Patcher to upgrade CrossOver dependencies and improve compatibility"
  homepage "https://github.com/italomandara/CXPatcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "gstreamer-runtime"

  app "CXPatcher.app"

  zap trash: [
    "~/Library/Application Scripts/com.italomandara.Crossover-patcher",
    "~/Library/Containers/com.italomandara.Crossover-patcher",
  ]

  caveats <<~EOS
    CXPatcher is an unofficial patcher for CrossOver. CodeWeavers is not
    – by any means – involved in this or has anything to do with this app.

    Although it has been tested, this software may render CrossOver unusable or unstable.

    USE AT YOUR OWN RISK!

    This will also void any official support from CodeWeavers.
  EOS
end
