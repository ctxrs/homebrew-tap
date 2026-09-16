class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.4.9"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.9/ctx-macos-arm64",
          using: :nounzip
      sha256 "533f583fb7166495d4a4acd9ba85c6c264af36991001450f0a2b4d4c46ae7c17"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.9/ctx-macos-x64",
          using: :nounzip
      sha256 "8dda1612d4b24200ba0cb574f86ae6fd16efcac3587f08b68d17ead8a873bf61"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.9/ctx-linux-x64",
          using: :nounzip
      sha256 "076813c0fcdcba9233c792c0b04afda7cea19a26a61690132820d0e48c603d90"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.9/ctx-linux-aarch64",
          using: :nounzip
      sha256 "557164e42ad65fabb67f1fbd0eb21828b26d8bc38b7f410a7e4a88a87c32cd64"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
