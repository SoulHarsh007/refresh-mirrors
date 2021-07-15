pkgname='refresh-mirrors'
pkgver=0.0.1
pkgrel=1
pkgdesc='Just some convenient shortcuts for running the `rate-mirrors` tool (https://github.com/westandskif/rate-mirrors) for RebornOS. This is *NOT* a fork, but just a wrapper for shortcuts that call the tool.'
arch=('x86_64')
url='https://gitlab.com/rebornos-team/applications/refresh-mirrors'
license=('MPL2')
groups=('rebornos')
depends=('rate-mirrors'
         'polkit')
provides=("${pkgname}")
conflicts=("${pkgname}")
replaces=()
backup=()
options=()
install=
source=()
noextract=()
md5sums=('SKIP')

build() {
    :
}

check() {
    :
}

package() {
    cd ..
    install -D -m 755 refresh-archlinux-mirrors.desktop "${pkgdir}/usr/share/applications/refresh-archlinux-mirrors.desktop"
    install -D -m 755 refresh-rebornos-mirrors.desktop "${pkgdir}/usr/share/applications/refresh-rebornos-mirrors.desktop"
    install -D -m 755 refresh-archlinux-mirrors.service "${pkgdir}/usr/lib/systemd/system/refresh-archlinux-mirrors.service"
    install -D -m 755 refresh-rebornos-mirrors.service "${pkgdir}/usr/lib/systemd/system/refresh-rebornos-mirrors.service"
}