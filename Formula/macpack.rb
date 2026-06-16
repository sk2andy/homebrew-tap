class Macpack < Formula
  desc "Universal macOS package manager for dev tools and repositories"
  homepage "https://github.com/sk2andy/macpack"
  url "https://github.com/sk2andy/macpack/releases/download/v0.2/macpack-0.2-darwin-arm64.tar.gz"
  version "0.2.0"
  sha256 "0c4b34671ba7bd33a7eb6f22637d456399319f55d568f7038404c6f482f85b27"
  license "MIT"

  def install
    odie "macpack release binary currently supports Apple Silicon only" unless Hardware::CPU.arm?

    bin.install "macpack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macpack --version")
  end
end
