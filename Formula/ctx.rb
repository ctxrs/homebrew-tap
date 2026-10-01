class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.2.5"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.5/ctx-macos-arm64",
          using: :nounzip
      sha256 "3ecd88d1bd352021ee968e16c3c09a8bf463960ca59c62345dc3c53c43e0434c"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.5/ctx-macos-x64",
          using: :nounzip
      sha256 "00b8c93c55eedac494cffbdff8c226124ba0bdc72e69e7cd096df084e6e117a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.5/ctx-linux-x64",
          using: :nounzip
      sha256 "a34dea5142998a9a3f4a7651f61fed1c152d64f7e61d424deb8a3a5291f192b3"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.5/ctx-linux-aarch64",
          using: :nounzip
      sha256 "6a1466413c83a077bb36aa60a335c691baca90d5228e2054bb92abac06349193"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
