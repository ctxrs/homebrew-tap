class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.2.2"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.2.2/ctx-macos-arm64",
          using: :nounzip
      sha256 "2800623f980980e20034d92aba8280d089a471bf4fd351b42668dc2f8a66acad"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.2.2/ctx-macos-x64",
          using: :nounzip
      sha256 "5f589203598ac5c6a4cb905fb9d21d40786403fc0c21c704b6386a007f8e7ad4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.2.2/ctx-linux-x64",
          using: :nounzip
      sha256 "b8e2793b5fb293cd89c72d40c48935366eb0f08bdfb6427019fb7a77ec7b134a"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.2.2/ctx-linux-aarch64",
          using: :nounzip
      sha256 "e1010c556c1faf0010665750e99816bd95d559e76cfde361f22e7fcb0e7fe7c6"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
