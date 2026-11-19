cask "pimsiang" do
  version "0.1.1"
  sha256 "afb7249d2144c821cf93165ba276d11cac6ea8f5ab91d64388f69d0caf2416c3"

  url "https://github.com/PingSunn/pimsiang/releases/download/v#{version}/PimSiang-#{version}-arm64.zip"
  name "PimSiang"
  desc "Thai dictation: hold a key, speak, and the text is typed for you"
  homepage "https://github.com/PingSunn/pimsiang"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "PimSiang.app"

  uninstall quit: "com.pingsunn.pimsiang"

  zap trash: [
    "~/Library/Application Support/PimSiang",
    "~/Library/Caches/com.pingsunn.pimsiang",
    "~/Library/HTTPStorages/com.pingsunn.pimsiang",
    "~/Library/Logs/PimSiang",
    "~/Library/Preferences/com.pingsunn.pimsiang.plist",
    "~/Library/Saved Application State/com.pingsunn.pimsiang.savedState",
  ]
end
