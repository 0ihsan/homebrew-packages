class Mcal < Formula
  desc "Manage your today in macOS Calendar from command line."
  homepage "https://github.com/0ihsan/mcal"
  version "v2.0"
  url "https://github.com/0ihsan/mcal/archive/refs/tags/#{version}.tar.gz"
  sha256 "7b33f7b4fef9d211155bc2a9db1191e3201b51e16ce6de39738bac942b84a009"
  license "MIT"
  head "https://github.com/0ihsan/mcal.git"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/mcal", "-h"
  end
end
