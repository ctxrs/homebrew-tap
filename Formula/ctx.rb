class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.4.6"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.6/ctx-macos-arm64",
          using: :nounzip
      sha256 "56524bc61f12a99fd9da924c5dd361bd565920dcb9ee004b07582ca14d56b968"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.6/ctx-macos-x64",
          using: :nounzip
      sha256 "621fd241b107b34db9769f395d63c57599f2dc8fcdd8bd54772ea693413cdb1e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.6/ctx-linux-x64",
          using: :nounzip
      sha256 "956c1e8a107eee3a227de768940314e3abbec6a2575bd42ae7609751deb4680b"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.6/ctx-linux-aarch64",
          using: :nounzip
      sha256 "627cf8068411fe6bfa5ca91fb8b3b4eabed1dc35ece17d2f72258fce444d5921"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
