class Ctxa < Formula
  desc "Local capability control for AI agents"
  homepage "https://ctx.rs/authority"
  url "https://github.com/ctxrs/ctx-authority/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "48a1f50180a410c5e54f78a988e2effa2d51c79538b0587b4a85fd7ea4452698"
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
