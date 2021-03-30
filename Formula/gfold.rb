class Gfold < Formula
  desc "CLI tool to help keep track of your Git repositories, written in Rust"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/gfold/archive/1.0.0.tar.gz"
  sha256 "44f3f970aeab1ec1d656defa81311d6c83ddb357e5187dc9697d9406055b62eb"
  license "Apache-2.0"

  depends_on "rust" => :build

  uses_from_macos "zlib"

  def install
    system "cargo", "install", "--bin", "gfold", *std_cargo_args
  end

  test do
    system bin/"gfold"
  end
end
