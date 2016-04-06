class Wallapy < Formula
  desc "Walla.py is the library that supplies utility functions for the Walla.py Eclipse plugin. It is used to prepare a Wallaby for use with the plugin, as well as retrieve any connected Wallabys."
  homepage "http://wallapy.lukor.tk"
  url "https://www.lukor.tk/files/wallapy.tar.gz"
  sha256 "841b5842045201fb6207d6beb6c0a546ba5bcfb072870e7f3b7a84868b491c75"
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
