class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.4.10"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.10/ctx-macos-arm64",
          using: :nounzip
      sha256 "9b0bf57b99fe99b31404f4d4cca74391f7f97c0a020cb4128b6eb436c3cde568"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.10/ctx-macos-x64",
          using: :nounzip
      sha256 "3b1c297468b5ace81fb308aef3a3913776eac16bc4a2d320e37ebc233e84e2ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.10/ctx-linux-x64",
          using: :nounzip
      sha256 "5fb71832a1243f0e1e99ecd795bb77af4119b487f2a261066bbbd2650c21cf00"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.10/ctx-linux-aarch64",
          using: :nounzip
      sha256 "8e1fe75290833fd3c720cb0f208627f23589f4a8f9ff86571ce8905d745b023b"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
