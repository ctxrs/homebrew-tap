class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.2.6"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.6/ctx-macos-arm64",
          using: :nounzip
      sha256 "885ded5c9c63bfbc4d5e2fa3c20222d049b937fed587e0562276101fc220ea1b"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.6/ctx-macos-x64",
          using: :nounzip
      sha256 "f6432776e4b8f4cbb7def251799cc186737159cb276a898c8b2399adce376a27"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.6/ctx-linux-x64",
          using: :nounzip
      sha256 "b47e565f2d5a7d0cd154b0690ea3abcb4bf5d0426d94c30fbf6d43db97e22184"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.6/ctx-linux-aarch64",
          using: :nounzip
      sha256 "acd23b8aa0653b3d0b15e8df9b0a9c44dfb1e361cca65c390af8ef6f307112a1"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
