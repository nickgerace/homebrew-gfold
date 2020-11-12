class Gfold < Formula
  desc "CLI tool to help keep track of your Git repositories, written in Rust"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/gfold/archive/0.7.0.tar.gz"
  sha256 "2cb4b4c58d48a127ce6ac1358b8c0963c6a0bb89485d6570561555d4bb74c857"
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
