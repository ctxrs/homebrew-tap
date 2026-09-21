class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.5.0"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.5.0/ctx-macos-arm64",
          using: :nounzip
      sha256 "44f603d93e311feac46be5ad2e9212e05dc06f8822c4d28ae0ecb213263707b4"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.5.0/ctx-macos-x64",
          using: :nounzip
      sha256 "8c9cb02cf5d43f77e203d69aa07bbaea2810cb99c3647a0b8a1a3455bd4b017c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.5.0/ctx-linux-x64",
          using: :nounzip
      sha256 "e9a55abcc4741cc065482e0d9cabd1c3e95f3f1b006643c1e34c0539224ddeb4"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.5.0/ctx-linux-aarch64",
          using: :nounzip
      sha256 "61716086c26edbb8124f86ecf49734539e1febfd98fa70798323942f79bc60a2"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
