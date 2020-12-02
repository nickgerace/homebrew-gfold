class Gfold < Formula
  desc "CLI tool to help keep track of your Git repositories, written in Rust"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/gfold/archive/0.8.1.tar.gz"
  sha256 "cf15f757eec9d7a841afd4402240085521ce1dce37c06ddb9642e0a9a35ad44d"
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
