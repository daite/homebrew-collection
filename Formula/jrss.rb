class Jrss < Formula
    desc "A tool to handle RSS feeds"
    homepage "https://github.com/daite/jrss"
    url "https://github.com/daite/jrss/archive/refs/tags/v0.1.3.tar.gz"
    sha256 "f4688ac96e0ba2fbaa537ba36e1ddc079623e36ecd0943032a437435f48d938b" # Replace with the actual SHA256 checksum
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      # Build the Go binary
      system "go", "build", "-o", bin/"jrss", "./cmd/jrss"
    end
end  
