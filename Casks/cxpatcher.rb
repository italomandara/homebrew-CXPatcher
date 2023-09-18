cask "cxpatcher" do
  version "0.3.2"
  sha256 "0d2e94fee00c286378f66c26aa2eeb3244c11e335265180c15e2a163531cd760"

  url "https://github.com/italomandara/CXPatcher/releases/download/V#{version}/CXPatcher.app.zip"
  name "CXPatcher"
  desc "Patcher to upgrade CrossOver dependencies and improve compatibility"
  homepage "https://github.com/italomandara/CXPatcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "italomandara/CXPatcher/gstreamer"

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
