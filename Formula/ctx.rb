class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "0.20.0"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v0.20.0/ctx-macos-arm64",
          using: :nounzip
      sha256 "0afd48f29595bd6072ea7190f174488a54addeb927d9ca803c5986841744d090"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v0.20.0/ctx-macos-x64",
          using: :nounzip
      sha256 "5ca744fb218a9fbdb96f7c4c542035965a942d4a176eca03e8fa22b47fa5cebb"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v0.20.0/ctx-linux-x64",
          using: :nounzip
      sha256 "84b15b0d1b05d37a22047642a4f100b58d86714a549514ee25d0036ad41b48e8"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
