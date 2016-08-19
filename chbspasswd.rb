require "formula"

class Chbspasswd < Formula
  homepage "http://solarturtle.net/chbspasswd"
  url "https://github.com/chleggett/chbspasswd/releases/download/v0.1.2/chbspasswd-0.1.2.tar.gz"
  sha256 "2997af9ab5a2594295a6c08f7ab0f01eda7839b7be7b8943dadd173013da8fc1"

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
