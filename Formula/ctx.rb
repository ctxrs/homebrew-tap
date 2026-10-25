class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.3.0"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.3.0/ctx-macos-arm64",
          using: :nounzip
      sha256 "58853117e62ac46378de5c67a3bec47b520ed8fbb809898c485ed4b50d4ca640"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.3.0/ctx-macos-x64",
          using: :nounzip
      sha256 "892db43154127f965fe804ca9ae5481fd644d96a2fc4306e030de6e57c5a26a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.3.0/ctx-linux-x64",
          using: :nounzip
      sha256 "8bc22cb45c7fa9acc2049a3c741925939a3da2801ef7d3b6e9c9c4faeb2fcc8d"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.3.0/ctx-linux-aarch64",
          using: :nounzip
      sha256 "bed352e04967cfc9a782e23ca810e6a1f280cb564d8b89b112f97d84e44c137e"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
