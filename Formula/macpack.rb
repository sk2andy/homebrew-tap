class Macpack < Formula
  desc "Universal macOS package manager for dev tools and repositories"
  homepage "https://github.com/sk2andy/macpack"
  url "https://github.com/sk2andy/macpack/releases/download/v0.3/macpack-0.3-darwin-arm64.tar.gz"
  version "0.3.0"
  sha256 "a5096419d6a0350e6faa16d9e1135d227d7b11853237723dd54559f849de3d45"
  license "MIT"

  def install
    odie "macpack release binary currently supports Apple Silicon only" unless Hardware::CPU.arm?

    bin.install "macpack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macpack --version")
  end
end
