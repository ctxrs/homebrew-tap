class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.0.2"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.0.2/ctx-macos-arm64",
          using: :nounzip
      sha256 "d1e0e553ecc450fbb69bc81c6a71a46d34d81d07deb1186ac8d7e3d2a5a12b57"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.0.2/ctx-macos-x64",
          using: :nounzip
      sha256 "f996603835b483af0a8018866f31ff913069d25100a156aa4bb5489cff85dfed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.0.2/ctx-linux-x64",
          using: :nounzip
      sha256 "04e21c7de80fd616a31b6268d8c24b127ec076e050ff2825613a789e4eea0df7"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.0.2/ctx-linux-aarch64",
          using: :nounzip
      sha256 "0c82bebe6a7db01f47185a458e3547b15e25cd8df45421927d6f7677e70563bf"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
