class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.2.7"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.7/ctx-macos-arm64",
          using: :nounzip
      sha256 "ffd382cd0dbc7966c16de3f236436a23c75773343c8a7bab8b76486eab864b8a"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.7/ctx-macos-x64",
          using: :nounzip
      sha256 "c14c22362810b02b9178c69741c0612df4ac2fcfd853550da64c052501be4639"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.7/ctx-linux-x64",
          using: :nounzip
      sha256 "38873a9f680a39161e1f6f7affa8f923ff37c3310644737ef04f695d602e86ed"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.7/ctx-linux-aarch64",
          using: :nounzip
      sha256 "06a0867f1b41cfc70718f689db0c9374f9c1393ed6bb4a9ee817e40820ee1cf3"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
