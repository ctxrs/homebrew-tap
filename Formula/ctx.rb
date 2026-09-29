class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.1.4"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.4/ctx-macos-arm64",
          using: :nounzip
      sha256 "982560350d733097da501720d6f746b25259c415fb839433b2388b09f14f6209"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.4/ctx-macos-x64",
          using: :nounzip
      sha256 "eeec8731d590a88c0721663490d4cdb1f071f349d496dd9f4f274630419d770f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.4/ctx-linux-x64",
          using: :nounzip
      sha256 "346e95201fd6a702c9235407050107aad05ad49c2cdf19c5dbde379ce65c551d"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.4/ctx-linux-aarch64",
          using: :nounzip
      sha256 "d09afdeae8a197d4ffdbfd8c7c6de7a31ce581549933cbbebd3f7c6175a92289"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
