class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.3.2"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.3.2/ctx-macos-arm64",
          using: :nounzip
      sha256 "f1223f91136a968a5156e4fa3b05b68214b78d8284865f909b54bcd60e2c6b09"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.3.2/ctx-macos-x64",
          using: :nounzip
      sha256 "ed9f50c1b3c89bd091803dc628d78de1bb72d2886c5b6f413a9e735a7e834b57"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.3.2/ctx-linux-x64",
          using: :nounzip
      sha256 "5eafcc659a076b2fe3b20f72bdb430d73500bf696cc304bcc1f4e5f2e6408775"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.3.2/ctx-linux-aarch64",
          using: :nounzip
      sha256 "000350f0c13b833be6cc6af188a35fe2d8d0ba129421b0686939726d0185c917"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
