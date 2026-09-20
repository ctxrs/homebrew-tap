class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.4.12"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.12/ctx-macos-arm64",
          using: :nounzip
      sha256 "58ec961c190004b107d0e26b918a6b98f836cc46be93b47be79d43d46686e5b8"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.12/ctx-macos-x64",
          using: :nounzip
      sha256 "62f8b5648365d432c8871427604352db4da76d0d14c5ccbf974eef584d32bc58"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.12/ctx-linux-x64",
          using: :nounzip
      sha256 "16ea5f8730fde42bddda3a6b75727314715cecb8454addaa5632c3b530b86bb6"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.12/ctx-linux-aarch64",
          using: :nounzip
      sha256 "94532c513f369fc720c9b31b55dfbe09ca1996751e58d057bcaa6b5b00d363ed"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
