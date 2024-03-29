class Sshpass < Formula
  url "https://github.com/caian-org/homebrew-formulas/raw/master/Packages/sshpass-1.06.tar.gz"
  homepage "https://sourceforge.net/projects/sshpass"
  sha256 "c6324fcee608b99a58f9870157dfa754837f8c48be3df0f5e2f3accf145dee60"

  depends_on "gnu-sed"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end
