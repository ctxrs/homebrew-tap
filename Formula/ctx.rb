class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.2.4"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.4/ctx-macos-arm64",
          using: :nounzip
      sha256 "d6397e840d38445390cbdd2ade8c0492d4a909812e77784af555b6a47f709ab9"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.4/ctx-macos-x64",
          using: :nounzip
      sha256 "3d8c79abcd8feb41608c56956155a94d4768ecf03f770698150c4c98354f9c56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.4/ctx-linux-x64",
          using: :nounzip
      sha256 "9f8c725a65444ae6889bd25854aec495e46a9b2ca9f07e1a1431813bf7185f86"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.4/ctx-linux-aarch64",
          using: :nounzip
      sha256 "e4dd008f3ba6cd4265d542c6d7daf0aab204f1b9829cfd1e1922ac1d9811cfc1"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
