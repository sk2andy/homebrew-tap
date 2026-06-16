class Macpack < Formula
  desc "Universal macOS package manager for dev tools and repositories"
  homepage "https://github.com/sk2andy/macpack"
  url "https://github.com/sk2andy/macpack/releases/download/v0.2/macpack-0.2-darwin-arm64.tar.gz"
  version "0.2.0"
  sha256 "77d021fe13b86627c0ccab83a3b2ced6de59a3f104ce3197ac48af24c4cf4ef1"
  license "MIT"

  def install
    odie "macpack release binary currently supports Apple Silicon only" unless Hardware::CPU.arm?

    bin.install "macpack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macpack --version")
  end
end
