class Macpack < Formula
  desc "Universal macOS package manager for dev tools and repositories"
  homepage "https://github.com/sk2andy/macpack"
  url "https://github.com/sk2andy/macpack/releases/download/v0.2/macpack-0.2-darwin-arm64.tar.gz"
  version "0.2.0"
  sha256 "faf8efb68ba58115d566f3b4c3695025d3aa48cc3994e31a4c1c73538850ce4a"
  license "MIT"

  def install
    odie "macpack release binary currently supports Apple Silicon only" unless Hardware::CPU.arm?

    bin.install "macpack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macpack --version")
  end
end
