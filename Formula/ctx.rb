class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "0.23.0"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v0.23.0/ctx-macos-arm64",
          using: :nounzip
      sha256 "5c1de3e8df319c91c6cbc8b2e6934de2e8c7ac8b11477c354211268f55b940e5"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v0.23.0/ctx-macos-x64",
          using: :nounzip
      sha256 "8c2cd950ed7a7c36dd18a229635cfc51d24d77028ce2a651b8e7675911f8d838"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v0.23.0/ctx-linux-x64",
          using: :nounzip
      sha256 "a7ec9c5971926709d8cedb5573492ad9dc0b76a7c3e4e5fdc28c9bde9103fe3e"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v0.23.0/ctx-linux-aarch64",
          using: :nounzip
      sha256 "7bf43a5212f9aa67f615f400fcae49bafb7562b1887587aafa7dfe6e29bd340c"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
