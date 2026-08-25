class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.1.0/ctx-macos-arm64",
          using: :nounzip
      sha256 "cf0a6490be574886b3085a567a2155a69226c7338ca0af2e3310c85bb7c39c43"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.1.0/ctx-macos-x64",
          using: :nounzip
      sha256 "faf395c5f1eda02c45088d9130058e9bdcb487f8d4c2d8bc34f78a46512b6b17"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.1.0/ctx-linux-x64",
          using: :nounzip
      sha256 "ca8c5f12a957ac394948014cc1200e642ed1c47c5f75f4628db1c5d805f71ae1"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.1.0/ctx-linux-aarch64",
          using: :nounzip
      sha256 "3081dc09a6a905ee3569deea6f434152e8f8263217972950ffbfb51d6cd056ad"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
