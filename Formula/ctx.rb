class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.4.1"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.1/ctx-macos-arm64",
          using: :nounzip
      sha256 "83851bd15fbaca4c07b92d0b2b7873986070b1b9284e72f1709c0dcfabacb7de"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.1/ctx-macos-x64",
          using: :nounzip
      sha256 "a38fd6c3d0596674f37671acd00048e0728f8078f68a26fc8a80409e51ca7df2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.1/ctx-linux-x64",
          using: :nounzip
      sha256 "0ff35fcadd3f2edfc64c11a7f227d40ddf3aa980d1fe80a71111f9d81c002542"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.1/ctx-linux-aarch64",
          using: :nounzip
      sha256 "bc44a8efd833a504358824f9de99b4d0c6d8652f8fa6fea3a504ebf7b54b37a9"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
