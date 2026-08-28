class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.2.1"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.2.1/ctx-macos-arm64",
          using: :nounzip
      sha256 "065b2f91b92163965df6b0640559094621c0fc610d24d346d93b3984657882d2"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.2.1/ctx-macos-x64",
          using: :nounzip
      sha256 "c29bdf5e743a82566ec29eb32859d879022010187a787997d79e775390c7ae9f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.2.1/ctx-linux-x64",
          using: :nounzip
      sha256 "ed0af5025cbcdc83f1ffa861281abf9844b0688922b3bcdf2ec03c36ddaf3f28"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.2.1/ctx-linux-aarch64",
          using: :nounzip
      sha256 "3c1ab67c3c5b5c6f6fc3b1001e221b957ebadcfb6c25cc9cf36a6f8ebd954964"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
