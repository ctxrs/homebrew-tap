class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.6.1"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.6.1/ctx-macos-arm64",
          using: :nounzip
      sha256 "6baed1e17d8bf6c7b3d66c03b816b8df699ad700aa8fd86ec37e68bbf4fe01ec"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.6.1/ctx-macos-x64",
          using: :nounzip
      sha256 "e9f919b4054413c15dab7fd8436c1bcdbfe076146ecb33c8d490638998f15191"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.6.1/ctx-linux-x64",
          using: :nounzip
      sha256 "123a3eebe0234bd6707e715ebccf90ae4610407e9614d0eb8ac34d69bbfc4492"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.6.1/ctx-linux-aarch64",
          using: :nounzip
      sha256 "be04c06048b5f74a0f9b287557933098d4ac5056f1ae1de59707da7ef2078109"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
