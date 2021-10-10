class Mcal < Formula
  desc "Manage macOS Calendar from command line interface."
  homepage "https://github.com/ihsanturk/mcal"
  version "v1.1.1"
  url "https://github.com/ihsanturk/mcal/archive/refs/tags/#{version}.tar.gz"
  sha256 "0899b5ae39660733c3804bf608c48648ef1637290abc229a2dac6c7bf77d1c1e"
  license "MIT"
  head "https://github.com/ihsanturk/mcal.git"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/mcal" "-h"
  end
end
