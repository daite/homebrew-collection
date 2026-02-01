class Tspider < Formula
  desc "simple CLI for searching torrent magnet!"
  homepage "https://github.com/daite/tspider"
  url "https://github.com/daite/tspider/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "3594d4adf8bd6ed2a35929b90bd04cb8b7a5e55fe5b8b9afa16d2ce235a4a6cf"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w", "-o", bin/"tspider", "./cmd/tspider"
  end

  test do
    assert_match "tspider version", shell_output("#{bin}/tspider --version")
  end
end
