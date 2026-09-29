class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.1.3"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.3/ctx-macos-arm64",
          using: :nounzip
      sha256 "bfeab8d0f18bc414f74de51ca0e39cce55fa01cbd21e8800d4636f14e85c683f"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.3/ctx-macos-x64",
          using: :nounzip
      sha256 "a93893235de226de6df497cc39e912aa0abdf39655026a8082ff1e7e006aa383"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.3/ctx-linux-x64",
          using: :nounzip
      sha256 "d8d35f65030609f498a95375c8d26de2be617bc916e1247d94a2d04ebbec0153"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.1.3/ctx-linux-aarch64",
          using: :nounzip
      sha256 "8e3adb6fb59f62d4752cfe8838e6bb2fbc1bb098c7cee86862be59c0eb84ac40"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
