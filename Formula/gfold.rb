class Gfold < Formula
  desc "CLI tool to help keep track of your Git repositories, written in Rust"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/gfold/archive/1.0.2.tar.gz"
  sha256 "f1ee8ba640fa81a1e5e858215b2d473395d27b04ce4a59131240be4d4d368ca3"
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
