class Macpack < Formula
  desc "Universal macOS package manager for Homebrew, npm, pnpm, bun, and uv"
  homepage "https://github.com/sk2andy/macpack"
  url "https://github.com/sk2andy/macpack/releases/download/v0.1/macpack-0.1-darwin-arm64.tar.gz"
  sha256 "d04d2b8d02b66585df02d37daa8a30b88fc69370acea5b07e181743e5466b3e6"
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
