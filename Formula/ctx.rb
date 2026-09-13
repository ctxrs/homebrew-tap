class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.4.2"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.2/ctx-macos-arm64",
          using: :nounzip
      sha256 "71a7619ddc89d7e327cb16bc49c447d8c86b36e854bdec8cc309a34c96b4c836"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.2/ctx-macos-x64",
          using: :nounzip
      sha256 "6b8d1976f99a870b2276b4b730671583015af83020b970520f61947eb0bad6e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.2/ctx-linux-x64",
          using: :nounzip
      sha256 "3d9ce8f3deb9cfedcf3ad162a53ed286babd80ced63b44723ac573b40fdd56fd"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.4.2/ctx-linux-aarch64",
          using: :nounzip
      sha256 "cc2ec46711af2a710a537e75d95219b674895d2e00a44cb58031741213a217c3"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
