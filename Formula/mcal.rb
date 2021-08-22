class Mcal < Formula
  desc "Manage macOS Calendar from command line interface."
  homepage "https://github.com/ihsanturk/mcal"
  version "v1.0.0"
  url "https://github.com/ihsanturk/mcal/archive/refs/tags/#{version}.tar.gz"
  sha256 "4281266d0834de8b4aaa93cf2c74ad517fdc679d1483690e3163ff5b76b2601a"
  license "MIT"
  head "https://github.com/ihsanturk/mcal.git"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/mcal" "-h"
  end
end
