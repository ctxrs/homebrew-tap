class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.4.1"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.4.1/ctx-macos-arm64",
          using: :nounzip
      sha256 "3876f1c197ac2a6dc74ae0020a4aa3a38dd3cf055c857142d9e4fddcfbd8593d"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.4.1/ctx-macos-x64",
          using: :nounzip
      sha256 "858608c857d81f07056bbd5fdc5219fd237a495e237ec9e0f4aeecf0e3e82267"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.4.1/ctx-linux-x64",
          using: :nounzip
      sha256 "ace96fce19d727d55d89d5e3a02920b72d8e7d3ab57a1c9637621ad481d96221"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.4.1/ctx-linux-aarch64",
          using: :nounzip
      sha256 "6ee85d3da36bf6d72de0a1011147910e439bba7c5836db52dfefd04f1feb1b76"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
