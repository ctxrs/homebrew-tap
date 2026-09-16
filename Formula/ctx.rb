class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.4.8"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.8/ctx-macos-arm64",
          using: :nounzip
      sha256 "9ea0f216394de2eb6e7332352f1be572b228af5ca185b318d1373b0275e9c946"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.8/ctx-macos-x64",
          using: :nounzip
      sha256 "9e65f6b0b7a3acd89d261840dd5619359f48f90bd86bfb91794b3b4d66d0ac66"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.8/ctx-linux-x64",
          using: :nounzip
      sha256 "3b873aec1d8d9d91e6338235ae079c66e8275addfa98fb6bff11dd12a1f4dc58"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.8/ctx-linux-aarch64",
          using: :nounzip
      sha256 "cec5b92004dd1c3f037d06717e74e55d577bf861de69b750c531c40cc82fcc59"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
