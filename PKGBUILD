# Maintainer: Manuel Domínguez López <mdomlop at gmail dot com>

_pkgver_year=2019
_pkgver_month=03
_pkgver_day=05

pkgname=xcursors-retrosmart
pkgver=1.0b
pkgrel=1
pkgdesc='A retrosmart look collection of cursors for X.'
url=https://github.com/mdomlop/retrosmart-x11-cursors
source=()
license=('GPL3')
builddepends=('imagemagick' 'xorg-xcursorgen')
optdepends=('retrosmart-kvantum-theme: The corresponding theme for Kvantum'
            'retrosmart-qtcurve-theme: The corresponding theme for QtCurve'
            'retrosmart-gtk-themes: The corresponding GTK themes'
            'retrosmart-openbox-themes: The corresponding Openbox themes'
            'retrosmart-wallpapers: The corresponding backgrounds project'
            'retrosmart-xfwm4-themes: The corresponding XFwm4 themes')
arch=('any')
group=('retrosmart')
#changelog=ChangeLog

build() {
    cd "$startdir"
    make
    }

package() {
    cd "$startdir"
    make install DESTDIR=$pkgdir
}
