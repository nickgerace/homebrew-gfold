class Gfold < Formula
  desc "CLI tool to help keep track of your Git repositories, written in Rust"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/gfold/archive/0.8.4.tar.gz"
  sha256 "5846c6b11518f2b3fde6e19bf09ed9092e63243dffbf5fd94010ae289dfe115e"
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
