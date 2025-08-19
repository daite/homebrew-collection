class JrssAT012 < Formula
    desc "A tool to handle RSS feeds"
    homepage "https://github.com/daite/jrss"
    url "https://github.com/daite/jrss/archive/refs/tags/v0.1.2.tar.gz"
    sha256 "b649e384b49bae8fe7dc937d0e476057482d15cb4c7e43f1c234c1173da049dc" # Replace with the actual SHA256 checksum
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      # Build the Go binary
      system "go", "build", "-o", bin/"jrss", "./cmd/jrss"
    end
end  
