class Mcal < Formula
  desc "Manage macOS Calendar from command line interface."
  homepage "https://github.com/ihsanturk/mcal"
  version "v0.1.1"
  url "https://github.com/ihsanturk/mcal/archive/refs/tags/#{version}.tar.gz"
  sha256 "536942e26838acbd779913f9a0eb6ee93a1a5a335035288dfebb215bb1809cdb"
  license "MIT"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/mcal" "-h"
  end
end
