class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.6.3"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.6.3/ctx-macos-arm64",
          using: :nounzip
      sha256 "88945ec9f719de9d36365499dfb1a30e463142bf1c0c5b400e5150156cc8e79b"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.6.3/ctx-macos-x64",
          using: :nounzip
      sha256 "95d40ae178564833d3e04eb6c9b5e69ae7ec5f7d0bb03c377dbfa8b627c08a94"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.6.3/ctx-linux-x64",
          using: :nounzip
      sha256 "ab2fa6c298699db8f3947838c1850cdfbed7b6d23c83fe68232afd35a95f3aec"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.6.3/ctx-linux-aarch64",
          using: :nounzip
      sha256 "3bea61d5d5eb21cfe1cef4f30ac045f6e1444f9364cbe65f9bf7d37ad533286e"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
