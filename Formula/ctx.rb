class Ctx < Formula
  desc "Fast, local CLI for searching agent history"
  homepage "https://ctx.rs"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://cli.ctx.rs/storage/v1/object/public/releases/artifacts/stable/0.12.0/ctx-macos-arm64",
          using: :nounzip
      sha256 "ba11be32346f80f073c5b9bc9d18359e13183984b83dd17d18016dff174c0ce1"
    end

    on_intel do
      url "https://cli.ctx.rs/storage/v1/object/public/releases/artifacts/stable/0.12.0/ctx-macos-x64",
          using: :nounzip
      sha256 "bb97ca8866630a6c25bfd3a6431c79c67a36eaae14f6b654f9904ee2cdcb31c5"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://cli.ctx.rs/storage/v1/object/public/releases/artifacts/stable/0.12.0/ctx",
          using: :nounzip
      sha256 "ec121fbd029eefd4eb89a889f46c3ef3e0de0bd069cf7ba6c228ccc3d901c69d"
    end
  end

  def install
    bin.install Dir["ctx*"].first => "ctx"
  end

  test do
    system bin/"ctx", "--version"
  end
end
