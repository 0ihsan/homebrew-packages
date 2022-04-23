class Mcal < Formula
  desc "Manage macOS Calendar from command line interface."
  homepage "https://github.com/ihsanturk/mcal"
  version "v1.1.7"
  url "https://github.com/0ihsan/mcal/archive/refs/tags/#{version}.tar.gz"
  sha256 "4197e6b9fe10c6da3caf817bbfcff6e63f065d4d495709270fb5f895563ac02b"
  license "MIT"
  head "https://github.com/ihsanturk/mcal.git"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/mcal" "-h"
  end
end
