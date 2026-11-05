class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.4.0"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.4.0/ctx-macos-arm64",
          using: :nounzip
      sha256 "d6fd6554d6e383f3daaa6cd1ad47556baa40730090c968feb707b19523c03dc3"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.4.0/ctx-macos-x64",
          using: :nounzip
      sha256 "e104a198b5c8c0c5445986f91464919bbe59d93f1ead352768d692203f988a24"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.4.0/ctx-linux-x64",
          using: :nounzip
      sha256 "0764b7b0ac72abefa3801fd0165892f9a5cc9d2e73a3e6ce0461daf79008c6ab"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.4.0/ctx-linux-aarch64",
          using: :nounzip
      sha256 "0df31b61622bff18c87f0cf548fd294e37ac5bb245467496e5d4906f44dc1ea4"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
