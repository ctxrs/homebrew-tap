class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.1.2"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.2/ctx-macos-arm64",
          using: :nounzip
      sha256 "2e034aa08117479a2adce54f9f454c3ef0b6107bd6a16d55731184a4dbf88112"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.2/ctx-macos-x64",
          using: :nounzip
      sha256 "dc8ccee9074e85cd9ce2c4e413d0ff7473679738f54b4f8f7dd4feb6d8a1bfea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.2/ctx-linux-x64",
          using: :nounzip
      sha256 "a2dc8a4c37e66a841bb365f619ec07e312a2304e16e6b722663f0b36df04fa33"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.2/ctx-linux-aarch64",
          using: :nounzip
      sha256 "26db3aa8f11e3cf0f8d5fd8c16aa6e40905baa739df5dd47d2734652507d4adf"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
