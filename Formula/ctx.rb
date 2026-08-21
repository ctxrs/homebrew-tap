class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.0.2"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.0.2/ctx-macos-arm64",
          using: :nounzip
      sha256 "989ebe1feb0eece952709355a391e251154dfa3d7878d9c5da56d26e57ea0537"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.0.2/ctx-macos-x64",
          using: :nounzip
      sha256 "e6bccb2453381383e381d216a7facc6f8236b1e3bbb90e0795e2c2a0dc3af50c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.0.2/ctx-linux-x64",
          using: :nounzip
      sha256 "19d5e0fb825cdd5ad0fd1b42f14f85d84a497bac3cbe233f956fa8de95fd50d6"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.0.2/ctx-linux-aarch64",
          using: :nounzip
      sha256 "c6cddc2fab3f1457ce86a6f08017f650bf6993d6861801b915eb6b96ef204256"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
