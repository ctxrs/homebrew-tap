class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.4.7"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.7/ctx-macos-arm64",
          using: :nounzip
      sha256 "637f09b2bf31189ba4c0cb20bcec1bb6787f5852e76a7032595903887028d078"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.7/ctx-macos-x64",
          using: :nounzip
      sha256 "beda15405c04341bfe17104277cd71a4cb0309d57995f637eccaa4051075bb28"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.7/ctx-linux-x64",
          using: :nounzip
      sha256 "d3c95cf36b6fa3b2b82355d5020bdc1ec93fb493efa69fc3eaffb9eead1eac5a"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.7/ctx-linux-aarch64",
          using: :nounzip
      sha256 "7db113de852ba7e9840d9fc23e86625ff5e109373a41c36c24b205b2825a2db1"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
