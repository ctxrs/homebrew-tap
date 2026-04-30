class Ctxa < Formula
  desc "Local capability control for AI agents"
  homepage "https://ctx.rs/authority"
  url "https://github.com/ctxrs/ctx-authority/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "2b17ee432615e7cbdd490ac4674a3dda9ce95b466700af041198aaf404ae5623"
  license "Apache-2.0"

  depends_on "pkgconf" => :build
  depends_on "rust" => :build

  on_linux do
    depends_on "dbus"
  end

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system bin/"ctxa", "--help"
  end
end
