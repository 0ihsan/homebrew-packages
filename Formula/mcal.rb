class Mcal < Formula
  desc "Manage macOS Calendar from command line interface."
  homepage "https://github.com/ihsanturk/mcal"
  version "v1.1.4"
  url "https://github.com/ihsanturk/mcal/archive/refs/tags/#{version}.tar.gz"
  sha256 "e6c3ebf91ec828c1956c03a789930e6671adab1a437fc80a45a0dea229999382"
  license "MIT"
  head "https://github.com/ihsanturk/mcal.git"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/mcal" "-h"
  end
end
