class Macpack < Formula
  desc "Universal macOS package manager for Homebrew, npm, pnpm, bun, and uv"
  homepage "https://github.com/sk2andy/macpack"
  url "https://github.com/sk2andy/macpack/releases/download/v0.1/macpack-0.1-darwin-arm64.tar.gz"
  sha256 "60f203cab7b1d357dadbb81e2758eca1295b1f8b110ffdf7e4e80ca525f82897"
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
