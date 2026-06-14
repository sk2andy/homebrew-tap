class Macpack < Formula
  desc "Universal macOS package manager for Homebrew, npm, pnpm, bun, and uv"
  homepage "https://github.com/sk2andy/macpack"
  url "https://github.com/sk2andy/macpack/releases/download/v0.1/macpack-0.1-darwin-arm64.tar.gz"
  sha256 "e0aba46f34c1355f33968d0bb3d77ea85a38f99ecd423e4a8a412fb985f6bf84"
  license "MIT"
  version "0.1.0"

  def install
    odie "macpack release binary currently supports Apple Silicon only" unless Hardware::CPU.arm?

    bin.install "macpack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macpack --version")
  end
end
