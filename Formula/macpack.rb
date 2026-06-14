class Macpack < Formula
  desc "Universal macOS package manager for Homebrew, npm, pnpm, bun, and uv"
  homepage "https://github.com/sk2andy/macpack"
  url "https://github.com/sk2andy/macpack/releases/download/v0.1/macpack-0.1-darwin-arm64.tar.gz"
  sha256 "4f9695f545ccb4506345cf6d8ab0b5e5fbc432b66d1b0f5962393b61a54765a5"
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
