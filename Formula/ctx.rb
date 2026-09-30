class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.2.2"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.2/ctx-macos-arm64",
          using: :nounzip
      sha256 "8debfcdc259ab48f5ad0f4f5064d35025ec9c4a22de95319f2ba0a2e8b32fa0e"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.2/ctx-macos-x64",
          using: :nounzip
      sha256 "c9df3053e211c2d929582836a2d5a47028b5cedda31cd30e53e79e2f008c951a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.2/ctx-linux-x64",
          using: :nounzip
      sha256 "21af686e75cc31e69ee45aebf8411e6b0cda2ddd792b4b44b4e06a81e606368f"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.2/ctx-linux-aarch64",
          using: :nounzip
      sha256 "aa1657a195296de9e8bc57afd0b87ae10f832c70548392de47167d962b7f5fe7"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
