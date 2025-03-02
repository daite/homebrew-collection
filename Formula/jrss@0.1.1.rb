class JrssAT011 < Formula
    desc "A tool to handle RSS feeds"
    homepage "https://github.com/daite/jrss"
    url "https://github.com/daite/jrss/archive/refs/tags/v0.1.1.tar.gz"
    sha256 "968a67fc27cd6900b4c8d078fbeba900d1ffc5c343a031a8dfdeecd4211c0790" # Replace with the actual SHA256 checksum
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      # Build the Go binary
      system "go", "build", "-o", bin/"jrss", "./cmd/jrss"
    end
end  
