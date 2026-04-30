class Ctxa < Formula
  desc "Local capability control for AI agents"
  homepage "https://ctx.rs/authority"
  url "https://github.com/ctxrs/ctx-authority/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "e128e316f15b1a99537ea6a7bb789c22082a07a84ca54223039bc68bdd8fdec2"
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
    system "#{bin}/ctxa", "--help"
  end
end
