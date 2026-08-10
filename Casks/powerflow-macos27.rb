cask "powerflow-macos27" do
  version "0.2.3"
  sha256 "3d967065aa50e8df6c493e9ae46a7804b77fc309d498b68934764b9c4a9d2fe0"

  url "https://github.com/dashdogy/macOS27/releases/download/v#{version}/powerflow_#{version}_aarch64.dmg"
  name "Powerflow macOS27"
  desc "Monitor Mac and iOS power usage with macOS 27 battery support"
  homepage "https://github.com/dashdogy/macOS27"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "powerflow.app"

  caveats <<~EOS
    Powerflow macOS27 is ad-hoc signed and is not notarized. If macOS blocks
    the first launch, open System Settings > Privacy & Security, choose
    Open Anyway, and confirm the prompt.
  EOS
end
