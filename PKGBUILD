# Maintainer: Manuel Domínguez López <zqbzybc@tznvy.pbz>
_pkgver_year=2023
_pkgver_month=03
_pkgver_day=07
pkgname=xcursor-retrosmart
pkgver=2.4b
pkgrel=1
pkgdesc="A retrosmart look collection of cursors for X."
arch=("any")
makedepends=("btrfs-progs"
url="https://github.com/mdomlop/retrosmart-x11-cursors"
source=()
license=("GPL3")
backup=("")
build() {
cd $startdir
make
}
package() {
cd $startdir
make install DESTDIR=$pkgdir
}
