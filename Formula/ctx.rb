class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.5.0"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.5.0/ctx-macos-arm64",
          using: :nounzip
      sha256 "fb4552ba0eba63da5f1526cd27bc49dbc6475c081c832c8571e3d29814e34401"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.5.0/ctx-macos-x64",
          using: :nounzip
      sha256 "80039d8ccfa8999b304e5bd2b367f118e53b4b433ad894a3aab80cadc037426d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.5.0/ctx-linux-x64",
          using: :nounzip
      sha256 "b8a23886d99cb7d4e986ddd6e89642238e34eb7f64fa39a57aa870aba169a0b0"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.5.0/ctx-linux-aarch64",
          using: :nounzip
      sha256 "99a8804519f33fb3622067f6e2c3e492a8bd9951d2fceedba683da9d25ac7307"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
