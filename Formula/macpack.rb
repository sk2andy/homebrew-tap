class Macpack < Formula
  desc "Universal macOS package manager for dev tools and repositories"
  homepage "https://github.com/sk2andy/macpack"
  url "https://github.com/sk2andy/macpack/releases/download/v0.3/macpack-0.3-darwin-arm64.tar.gz"
  version "0.3.0"
  sha256 "1b011055640f74e70563203b8420da8ed2275964e7204920d989c23dd889b9bd"
  license "MIT"

  def install
    odie "macpack release binary currently supports Apple Silicon only" unless Hardware::CPU.arm?

    bin.install "macpack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macpack --version")
  end
end
