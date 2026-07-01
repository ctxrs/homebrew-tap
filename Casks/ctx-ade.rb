cask "ctx-ade" do
  arch arm: "arm64", intel: "x64"

  version "0.69.6"
  sha256 arm:          "2f5de0f46c25dea5560e0eef087d8932b46296e6f1f0f3900aa4c42a1ed61a40",
         intel:        "9ca796bedd3912ab911214aee05b7c13670b949d0393469824646b2f89f4fd94",
         arm64_linux:  "2f5de0f46c25dea5560e0eef087d8932b46296e6f1f0f3900aa4c42a1ed61a40",
         x86_64_linux: "9ca796bedd3912ab911214aee05b7c13670b949d0393469824646b2f89f4fd94"

  url "https://api.ctx.rs/functions/v1/download/stable/#{version}/ctx_#{version}_macos-#{arch}.dmg"
  name "ctx ADE"
  desc "Local-first desktop workbench for coding agents"
  homepage "https://ade.ctx.rs/"

  livecheck do
    url "https://api.ctx.rs/functions/v1/releases/stable/latest.json"
    strategy :json do |json|
      json["latest_version"]
    end
  end

  auto_updates true
  depends_on macos: :big_sur

  app "ctx.app"

  uninstall quit: "rs.ctx.desktop"
end
