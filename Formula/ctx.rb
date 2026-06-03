class Ctx < Formula
  desc "Agentic Development Environment CLI"
  homepage "https://ctx.rs"
  version "0.66.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ctxrs/ctx/releases/download/cli-v0.66.0/ctx-cli-0.66.0-macos-arm64.tar.gz"
      sha256 "68b342e4dd6b0c68b522bd1d01919503ddbddaa6b84def33cbf133715161ac89"
    else
      url "https://github.com/ctxrs/ctx/releases/download/cli-v0.66.0/ctx-cli-0.66.0-macos-x64.tar.gz"
      sha256 "b8497e2919cf434861d760a20aaaffbf044b393ee21d8744d61712086c246694"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ctxrs/ctx/releases/download/cli-v0.66.0/ctx-cli-0.66.0-linux-arm64.tar.gz"
      sha256 "608edf67dfe1b90f12696c099fc587cffe35da812a254d4b21eb58bde0ebea83"
    else
      url "https://github.com/ctxrs/ctx/releases/download/cli-v0.66.0/ctx-cli-0.66.0-linux-x64.tar.gz"
      sha256 "69edf634485b68dc5a2a636db6ca6cce7e11f7f545d81726cd73ba28dc64e1aa"
    end
  end

  def install
    bin.install "bin/ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
