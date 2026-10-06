class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.2.8"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.8/ctx-macos-arm64",
          using: :nounzip
      sha256 "ea2a38dfd8cb2c2fa3c8893393e4df7810b7bbca407b150c34ce41216855ac87"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.8/ctx-macos-x64",
          using: :nounzip
      sha256 "fc261a86f30e324562d777f3b02bd6931e2d55835fc99fdb3f290eed17460f5f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.8/ctx-linux-x64",
          using: :nounzip
      sha256 "afcff832d2de1eedd8623097acd29ded17a5defe372e8e04f10b40fd45df7711"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.2.8/ctx-linux-aarch64",
          using: :nounzip
      sha256 "44680459d84a7d82ac9fd4e46c1acaf81a6bf1c422fd207344c7aded85a3972a"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
