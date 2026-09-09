class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.4.0"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.0/ctx-macos-arm64",
          using: :nounzip
      sha256 "6b1aea494599819e41713564a7e9e9da2bcbf4c4f24104d99eda0af6b5b3a588"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.0/ctx-macos-x64",
          using: :nounzip
      sha256 "2b9b49b265f8933fbb460478019c32c47f1726275e2cb50f3c8b5eae858b835f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.0/ctx-linux-x64",
          using: :nounzip
      sha256 "eede16a831399fd08de42af49e19be819f70da89b62fd612a8ba46958351552c"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.0/ctx-linux-aarch64",
          using: :nounzip
      sha256 "02fcb6d7530429dfffe54eb3f44369dc2f44361ab0b52cabf1c2b0b069a5123a"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
