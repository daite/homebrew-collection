class Pdl < Formula
  desc "A fast CLI podcast downloader written in Rust"
  homepage "https://github.com/daite/pdl"
  url "https://github.com/daite/pdl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "07594207fb1108c10ca950f72cbff23c965d0b74ee3fcc0886f653f4d2fb64d7"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "pdl #{version}", shell_output("#{bin}/pdl -v")
  end
end
