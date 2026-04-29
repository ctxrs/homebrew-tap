class Ctxa < Formula
  desc "Local capability control for AI agents"
  homepage "https://ctx.rs/authority"
  url "https://github.com/ctxrs/ctx-authority/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9812b23bcc22c6cea5401fa06e35a1770005d3b56c502e477f86eae45bcf8cdd"
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
