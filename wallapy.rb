class Wallapy < Formula
  desc "Walla.py is the library that supplies utility functions for the Walla.py Eclipse plugin. It is used to prepare a Wallaby for use with the plugin, as well as retrieve any connected Wallabys."
  homepage "http://wallapy.lukor.tk"
  url "https://www.lukor.tk/files/wallapy.tar.gz"
  sha256 "d98c7a1887fdf276dcfa36894aa5aa5dcb989f852d49c2a120ed13426cc182f3"
  version "1.1.2"

  depends_on "nmap"
  depends_on "ipcalc"
  depends_on "python"

  def install
  	bin.install "setupWallaby", "getDevices", "nwAddress"
	(share/"pyball").mkpath
	(share/"pyball").install Dir["wallaby/*"]
  end

  test do
    system "nwAddress"
  end
end
