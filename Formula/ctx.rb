class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.0.0"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.0.0/ctx-macos-arm64",
          using: :nounzip
      sha256 "a95b953fa0043cbc86dd9ea52b2160d7c7e425f58880b77f77f236ce206d554e"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.0.0/ctx-macos-x64",
          using: :nounzip
      sha256 "941b8269807840e63ef1b1258cbdda844e3b24cc59794d609461c781db2eae9e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.0.0/ctx-linux-x64",
          using: :nounzip
      sha256 "d8d44dd93ed50ee4cdacaf29323da6fb133ba936f647bb9de09a71e2afaf23eb"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.0.0/ctx-linux-aarch64",
          using: :nounzip
      sha256 "77f3b06bf470f7daf4eb26e17bc013fa42fff94b381506bc62dc4a0d4da4009d"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
