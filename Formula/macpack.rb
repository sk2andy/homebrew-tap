class Macpack < Formula
  desc "Universal macOS package manager for dev tools and repositories"
  homepage "https://github.com/sk2andy/macpack"
  url "https://github.com/sk2andy/macpack/releases/download/v0.3/macpack-0.3-darwin-arm64.tar.gz"
  version "0.3.0"
  sha256 "82a4254cd3fc90f60b9b67dc701f1204563a5839c2d81d5a7d5d759cbf8229b5"
  license "MIT"

  def install
    odie "macpack release binary currently supports Apple Silicon only" unless Hardware::CPU.arm?

    bin.install "macpack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macpack --version")
  end
end
