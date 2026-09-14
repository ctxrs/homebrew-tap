class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.4.3"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.3/ctx-macos-arm64",
          using: :nounzip
      sha256 "00b2c134f1bc3423cec6030fab3474c5964e5e7a2d6f4bd10114ee329a3e4736"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.3/ctx-macos-x64",
          using: :nounzip
      sha256 "b5354b8bf048807a0eb43a7623ec5697bfa8c609ff7c0345902ce2bca0288e9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.3/ctx-linux-x64",
          using: :nounzip
      sha256 "578106925cbd8b185ee37984c5adc3c6cbe37546e3e95a5ae2625a43aa687a12"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.3/ctx-linux-aarch64",
          using: :nounzip
      sha256 "ba4bb2f40533a93bf3fa2b2732497755f0728210ffd51a3510b686bc7ed8c8a5"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
