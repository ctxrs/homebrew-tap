class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.0.0/ctx-macos-arm64",
          using: :nounzip
      sha256 "06d3bb2a7fdc5ee8a432d048830b3da37a6bd7879bb2412f8ff9d44abcde825b"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.0.0/ctx-macos-x64",
          using: :nounzip
      sha256 "2ab5a20e72687ff8f298f360f69dd26854927bf0f0d8f2b4a161d3b7bbb049c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.0.0/ctx-linux-x64",
          using: :nounzip
      sha256 "b51f28c3ed6db16027544d33c3c8f6ac0d46d961eb4e211c087b579002d4d97a"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.0.0/ctx-linux-aarch64",
          using: :nounzip
      sha256 "eb1b6cf4f73d94d58d420f81f2db63ee69f911aba667fff91962349dce2e2708"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
