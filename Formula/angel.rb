class AngelAT080 < Formula
    desc "simple CLI for searching torrent magnet!"
    homepage "https://github.com/daite/angel"
    url "https://github.com/daite/angel/archive/refs/tags/v0.9.0.tar.gz" # Replace with your local or remote URL
    sha256 "fa45c98bcd4aa6f21f31960c6e21e3733c13685b37e2be1773b969d5a0bb16a6" # Replace with the actual SHA256 checksum
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-ldflags", "-s -w", "-o", bin/"angel", "./cmd/angel"
    end
  
    test do
      assert_match "angel version", shell_output("#{bin}/angel --version")
    end
end
