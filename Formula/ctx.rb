class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.3.2"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.3.2/ctx-macos-arm64",
          using: :nounzip
      sha256 "c90fcd804d79e755cbae73368e49b53fa820cc9bb2bf4636b62242143e7f6552"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.3.2/ctx-macos-x64",
          using: :nounzip
      sha256 "2059a6ec213c680ce44d8bb09e28fc29b621088044e45d75a7d0ff3607351eb0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.3.2/ctx-linux-x64",
          using: :nounzip
      sha256 "59e9d7f9842fdab07789ce1aedf4db6838e3b0fdbddc60cee5446f08d02a2d02"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.3.2/ctx-linux-aarch64",
          using: :nounzip
      sha256 "df3fb752f16ae245de3135228e1090343c3a04877c57ddcbe712b9c4493b8fe2"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
