class Dlatlon < Formula
  desc "Calculate distance from latitude and longitude."
  homepage "https://github.com/ihsanturk/dlatlon"
  version "v0.1.0"
  url "https://github.com/ihsanturk/dlatlon/archive/refs/tags/#{version}.tar.gz"
  sha256 "730aa0ec009a30a18365a9fcc96dbe2f200ea0a2b34339653dcfa9b7f290662b"
  license "MIT"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/dlatlon" "-h"
  end
end
