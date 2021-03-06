class Unp < Formula
  homepage "https://packages.debian.org/source/stable/unp"
  url "https://mirrors.kernel.org/debian/pool/main/u/unp/unp_2.0~pre4.tar.gz"
  mirror "https://ftp.us.debian.org/debian/pool/main/u/unp/unp_2.0~pre4.tar.gz"
  sha256 "25ecea61a68408f69618502132bf8edb350355fc8ef72ae5b20456d7850331bf"
  version "2.0-pre4"

  devel do
    url "https://mirrors.kernel.org/debian/pool/main/u/unp/unp_2.0~pre7+nmu1.tar.bz2"
    mirror "https://ftp.us.debian.org/debian/pool/main/u/unp/unp_2.0~pre7+nmu1.tar.bz2"
    sha256 "7c2d6f2835a5a59ee2588b66d8015d97accd62e71e38ba90ebd4d71d8fd78227"
    version "2.0-pre7-nmu1"
  end

  depends_on "p7zip"

  def install
    bin.install %w[unp ucat]
    man1.install "debian/unp.1"
    bash_completion.install "bash_completion.d/unp"
    %w[ COPYING CHANGELOG ].each { |f| rm f }
    mv "debian/README.Debian", "README"
    mv "debian/copyright", "COPYING"
    mv "debian/changelog", "ChangeLog"
  end
end
