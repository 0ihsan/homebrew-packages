class Mcal < Formula
  desc "Manage macOS Calendar from command line interface."
  homepage "https://github.com/ihsanturk/mcal"
  version "v1.1.5"
  url "https://github.com/ihsanturk/mcal/archive/refs/tags/#{version}.tar.gz"
  sha256 "ff5097fd1b86f9dadc661e585b11e7e59358410942dbbdf9baff7e42a8e1be2f"
  license "MIT"
  head "https://github.com/ihsanturk/mcal.git"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/mcal" "-h"
  end
end
