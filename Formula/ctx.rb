class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "0.25.0"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v0.25.0/ctx-macos-arm64",
          using: :nounzip
      sha256 "e02701896c2189fe5c622ecd5326c3bf57a5cda8febef942418e79203e543d20"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v0.25.0/ctx-macos-x64",
          using: :nounzip
      sha256 "8283ef3ffc1aad0099f18593cc10f3f1a1d0e1a61dce031d3a737ebdf83f5dd8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v0.25.0/ctx-linux-x64",
          using: :nounzip
      sha256 "44fdc710c142c686c3b6ecb88bfad584f94abff3281ccfa389a4d2320c7ce526"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v0.25.0/ctx-linux-aarch64",
          using: :nounzip
      sha256 "4aa5d9ec83e82be567ed290e25ad2fa91f1aa4cfe15329767046fa114693d98a"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
