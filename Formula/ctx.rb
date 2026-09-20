class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.4.11"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.11/ctx-macos-arm64",
          using: :nounzip
      sha256 "11be075ff03fe4cbbde8349544437ddee29d4683636b39270aeec1f0fde3fe29"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.11/ctx-macos-x64",
          using: :nounzip
      sha256 "446d5517614364c44578ca9d934dac06e6b0b262b16c4977fa70fb5be72511e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.11/ctx-linux-x64",
          using: :nounzip
      sha256 "7e2226db9c67cd6409a96f00c004ef6ce425e8e14ed8b3ef2bd20b1675f3ee98"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.11/ctx-linux-aarch64",
          using: :nounzip
      sha256 "2649ee3f976bebbd66e7701300fda402c5c21fe81a11261d3601a9a7d4acd524"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
