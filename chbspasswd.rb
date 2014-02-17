require "formula"

class Chbspasswd < Formula
  homepage "http://solarturtle.net/chbspasswd"
  url "https://github.com/chleggett/chbspasswd/releases/download/v0.1.2/chbspasswd-0.1.2.tar.gz"
  sha1 "d56b4bd7ab904b6d7430554e29798e174266493e"

  def install

    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/chbspasswd", "-w 2", "-s .,1", "-b d,1", "-a s,1"
  end
end
