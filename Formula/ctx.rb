class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "0.22.0"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v0.22.0/ctx-macos-arm64",
          using: :nounzip
      sha256 "603d9bf83ea12222b5262c4a8d430f7aaa0703b657a33aa32b96618d08481aab"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v0.22.0/ctx-macos-x64",
          using: :nounzip
      sha256 "199ba78793bf5eb738a57a019f3e25da98de8636cc33571931926ead40452393"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v0.22.0/ctx-linux-x64",
          using: :nounzip
      sha256 "7a8f57202a6626241fd6e6bc196fb1d09c2692af5bf86b0ef6b91c7afda77f93"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v0.22.0/ctx-linux-aarch64",
          using: :nounzip
      sha256 "ae317001e7ee5a3908c20d2cd829fb65cfb1d6560964d2b808edf7638c2f1ba9"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
