class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.2.3"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.3/ctx-macos-arm64",
          using: :nounzip
      sha256 "d38881c44788c7e435ef0dfb39a6ca090a5c6a21a5f522612d6da8d177352790"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.3/ctx-macos-x64",
          using: :nounzip
      sha256 "c435d87eccc774c1aa55cb626136e11f687af0bdb250ef052f1b77c2c02fc083"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.3/ctx-linux-x64",
          using: :nounzip
      sha256 "09314d0587c35b476bff6f44f9385f5ca64c022abc000d7dcc0223d016c4688f"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.3/ctx-linux-aarch64",
          using: :nounzip
      sha256 "17c4e722a593a75ae0c9a0c6893f9fc8f2479c5fc7976d0727eae0898d1dc387"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
