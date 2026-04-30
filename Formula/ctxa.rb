class Ctxa < Formula
  desc "Local capability control for AI agents"
  homepage "https://ctx.rs/authority"
  url "https://github.com/ctxrs/ctx-authority/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "ce16c41ae026dd9bdc6895fa66dd5cb5d3f556c49a56b36d6ee3be734454e801"
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
