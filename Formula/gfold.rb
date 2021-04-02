class Gfold < Formula
  desc "CLI tool to help keep track of your Git repositories, written in Rust"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/gfold/archive/1.0.3.tar.gz"
  sha256 "83cb2830a0d3e6607efe4804aaa92f4da71e99f74697230b491fa888cde79716"
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
