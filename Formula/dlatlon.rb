class Dlatlon < Formula
  desc "Calculate distance from latitude and longitude."
  homepage "https://github.com/ihsanturk/dlatlon"
  version "v0.1.0"
  url "https://github.com/ihsanturk/dlatlon/archive/refs/tags/#{version}.tar.gz"
  sha256 "3c437096e18b55490b140b4fcd38f73a3a237b1b78b28a14d80dc92861e04db4"
  license "MIT"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/dlatlon" "-h"
  end
end
