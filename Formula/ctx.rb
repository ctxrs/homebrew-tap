class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.3.1"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.3.1/ctx-macos-arm64",
          using: :nounzip
      sha256 "90807a133453ed6a2a70b6fdfb70a1ce7da9b6d4eb2cf33248020c664d330d99"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.3.1/ctx-macos-x64",
          using: :nounzip
      sha256 "397b058a522fe27bbc28fcfc7519ecd7d40d768344403bf6a7d50cd90bc84dff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.3.1/ctx-linux-x64",
          using: :nounzip
      sha256 "67cb0eb8c12c49f1f69a83a73ddf9a5c8d8282c3f2c77a53fa541210cb501109"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.3.1/ctx-linux-aarch64",
          using: :nounzip
      sha256 "323872df83589328359a0775046a165ac5256725746636e9f3a456fbe242618c"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
