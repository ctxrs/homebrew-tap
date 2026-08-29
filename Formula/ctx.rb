class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.2.3"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.2.3/ctx-macos-arm64",
          using: :nounzip
      sha256 "6ad5e3719e136138b6f301639b26e3e15852e6146318a8400aaf5850a783d4a4"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.2.3/ctx-macos-x64",
          using: :nounzip
      sha256 "85caac0bb08f1edb125caa5a51ee05ede5bbeb9a7148f19cc2cb979537e681ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.2.3/ctx-linux-x64",
          using: :nounzip
      sha256 "00d471e2599602cbb4ac11dfbf75e1ba40592591369b0ca75fb11bfffaae6130"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.2.3/ctx-linux-aarch64",
          using: :nounzip
      sha256 "54a192fa5be4bd18b8056eee2dc0dbd30f7c7793e2c062ceec23819a7d73f781"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
