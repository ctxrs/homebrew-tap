class Ctx < Formula
  desc "Search agent history, blame code, map repositories, and filter tool output"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "2.0.5"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.0.5/ctx-macos-arm64",
          using: :nounzip
      sha256 "f982f7cf114a2956706909b6462b424f67c0c1b5dd94cee5245d574e94b9d50a"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.0.5/ctx-macos-x64",
          using: :nounzip
      sha256 "8c67fd39c3b376bb3579faea1f00ff8b953601684420acb8c5e9ff3178358fb4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v2.0.5/ctx-linux-x64",
          using: :nounzip
      sha256 "7e7ceae281b951430ff2300748e89af64a5d1fd9ad9fd2a4d9d82af0fce5f83c"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v2.0.5/ctx-linux-aarch64",
          using: :nounzip
      sha256 "0b95d0dd13e72da6b65656b34667ce6c65d490ec82e38b4c019d4262509abc78"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
