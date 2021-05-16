class Gfold < Formula
  desc "CLI tool to help keep track of your Git repositories, written in Rust"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/gfold/archive/1.2.0.tar.gz"
  sha256 "faac149fe83f8add61ef66e52e1e4b2d655644ccd2db45904f083f5398c7d079"
  license "Apache-2.0"

  depends_on "rust" => :build

  uses_from_macos "zlib"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"gfold"
  end
end
