class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.0/ctx-macos-arm64",
          using: :nounzip
      sha256 "a25d75b2344bbb10754550b7e13253c40a0094b5113bad786f285dbb95ca4783"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.0/ctx-macos-x64",
          using: :nounzip
      sha256 "8ea2d8b32e6c1c42f1cc395a0d595a39d841ebca770327d9999d0e94c018f419"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.0/ctx-linux-x64",
          using: :nounzip
      sha256 "00400fe639b35aaf3e748ccb20f502a3b494898570a2af77c1c6c18c5d5dc1ac"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.0/ctx-linux-aarch64",
          using: :nounzip
      sha256 "4570418a1f039a2534c2da57da518c1ec7257f47464e1217359b81ba7ecc7075"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
