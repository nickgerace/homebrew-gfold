class Gfold < Formula
  desc "CLI tool to help keep track of your Git repositories, written in Rust"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/gfold/archive/1.0.4.tar.gz"
  sha256 "75d701948057d2603cb4405d0ded2130b69b29e9cb4b6cdf8387d58a7d6b27a4"
  license "Apache-2.0"

  depends_on "rust" => :build

  uses_from_macos "zlib"

  def install
    system "cargo", "install", "gfold", "--locked", "--root", *std_cargo_args[2], "--path", "./gfold"
  end

  test do
    system bin/"gfold"
  end
end
