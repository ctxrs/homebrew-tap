class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.2.0"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.0/ctx-macos-arm64",
          using: :nounzip
      sha256 "e764af713abacd5b84c67a75a8af26d9cf85e8863bf5746369f9df59ef92ba45"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.0/ctx-macos-x64",
          using: :nounzip
      sha256 "23df55026ddde893717f23bdcd94a804bbfdc734e223b9369b62e46234c5c77f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.0/ctx-linux-x64",
          using: :nounzip
      sha256 "667c572e732f6da6b6ef49a6d2ba035811bdd51ff7a1a6c8ccdd72ec8a25f7d9"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.0/ctx-linux-aarch64",
          using: :nounzip
      sha256 "0352cad490ad73d64214a875ae442307919c50f552b2d1160fb67b2365d6f6d6"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
