class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.1.1"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.1/ctx-macos-arm64",
          using: :nounzip
      sha256 "95b146aa7b3175e5f26d974794ad82fb53c7b997c28d7163cb8834d7696bd9ef"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.1/ctx-macos-x64",
          using: :nounzip
      sha256 "450f649e7f0d7f3fc0852bfe3047d25aaf6e9c1f9ebe41506046e97e759a65ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.1/ctx-linux-x64",
          using: :nounzip
      sha256 "d9efd0a0efa67787f8d5b72f7b79613b190e84c7342822eb6864a05cc46a605a"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.1/ctx-linux-aarch64",
          using: :nounzip
      sha256 "629c99449930bb1a5bde2a9653898fde9c7b4925ac8a27ddc38f2e3e5bc74262"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
