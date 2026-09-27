class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.0.4"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.0.4/ctx-macos-arm64",
          using: :nounzip
      sha256 "a8a29cc7545e877b84dbd541bf789a110a87d04d72a433170b5b1cd126eac0f6"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.0.4/ctx-macos-x64",
          using: :nounzip
      sha256 "8ed83ebf15f401713ae0a592c82d7a6a90a4da2182b5730f712328ba146363b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.0.4/ctx-linux-x64",
          using: :nounzip
      sha256 "2aa8b5346c405c7b124d32e8ed1ed9507ea3b35869b171d613c7172816827c9a"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.0.4/ctx-linux-aarch64",
          using: :nounzip
      sha256 "63b23c89f47305aa6c19089900f8e9ece2be8af7280c14fd21dd89aa9dbbb91b"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
