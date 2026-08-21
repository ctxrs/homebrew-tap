class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.0.1/ctx-macos-arm64",
          using: :nounzip
      sha256 "bbfbffd450139885743b1e82a7a09e2abe2f1ee3383821e57e6b041e41b8bcf9"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.0.1/ctx-macos-x64",
          using: :nounzip
      sha256 "c61c911ba9290b35bb4712b8adb6800f9a883e82c656ad40313cd9e730044076"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.0.1/ctx-linux-x64",
          using: :nounzip
      sha256 "36395a56bc9b92718360cf526a75dabd27fd896a0d190f5caa30688b99d5b04c"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.0.1/ctx-linux-aarch64",
          using: :nounzip
      sha256 "00d7bc82799d040d42788639a1586dae1c4e0ff70ed4e9ccbb6104470526be06"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
