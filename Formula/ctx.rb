class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.2.4"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.2.4/ctx-macos-arm64",
          using: :nounzip
      sha256 "2f17eb888223f74307f7dcf3da5a9ffb839725061b7b9bbb95a5e106244b156e"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.2.4/ctx-macos-x64",
          using: :nounzip
      sha256 "50d8042a3e6b513f99b5e824fbade5699439d37558f5b84b59e5b1a75d49a8ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.2.4/ctx-linux-x64",
          using: :nounzip
      sha256 "67ba8ba70efadb6ac668ccba2289f07a5088e9edaf6a70a2e6f81671b27478bd"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.2.4/ctx-linux-aarch64",
          using: :nounzip
      sha256 "7f06cc56c9b265cb9d9524479bddba1ed1c90d31b28ad85fab7f07926e93cf57"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
