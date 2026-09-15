class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.4.4"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.4/ctx-macos-arm64",
          using: :nounzip
      sha256 "61a212623389b48c1f0cdba54b45e1182b2b1ba4c98ff71912102698191246bb"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.4/ctx-macos-x64",
          using: :nounzip
      sha256 "b72fee734846885974516b4627c8fc876f6c02518f29ba5d3e430d54d8dc1355"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.4/ctx-linux-x64",
          using: :nounzip
      sha256 "814ddb55cbd8299254c5c148952935f311f14358b90a5ff10c407dfe89e8421e"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.4/ctx-linux-aarch64",
          using: :nounzip
      sha256 "8936ec287bdf108ccc505b7cb90d1af4352211df481cbe6087aaa58655484779"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
