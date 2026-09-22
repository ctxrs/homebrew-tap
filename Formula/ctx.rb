class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"
  version "1.6.2"

  on_macos do
    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.6.2/ctx-macos-arm64",
          using: :nounzip
      sha256 "32833ad9cf1dd51fe7b45d58ad74a8134e2a90ea68a477b02d5fd204f0906fef"
    end

    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.6.2/ctx-macos-x64",
          using: :nounzip
      sha256 "c7133e7aa4c0c338fd55721446d12e435699a127d920d1a75d56fa406feb8180"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctxrs/ctx/releases/download/v1.6.2/ctx-linux-x64",
          using: :nounzip
      sha256 "d1c52d3218b70f930c6c97121aabe34fb68e879c15de49ae39921f44aebab818"
    end

    on_arm do
      url "https://github.com/ctxrs/ctx/releases/download/v1.6.2/ctx-linux-aarch64",
          using: :nounzip
      sha256 "45ef842f37c5ec2ad3b6a2050401c7930a5e389e93343852ebb48f0f2996286b"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
