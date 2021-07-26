pkgname='refresh-mirrors-rebornos'
pkgver=0.0.7
pkgrel=1
pkgdesc='Just some convenient shortcuts for running the `rate-mirrors` tool (https://github.com/westandskif/rate-mirrors) for RebornOS. This is *NOT* a fork, but just a wrapper for shortcuts that call the tool.'
arch=('x86_64')
url='https://gitlab.com/rebornos-team/applications/refresh-mirrors'
license=('MPL2')
groups=('rebornos')
depends=('rate-mirrors'
         'polkit')
provides=("${pkgname}")
conflicts=("${pkgname}"
           'refresh-mirrors')
replaces=('refresh-mirrors')
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
    install -D -m 755 refresh-mirrors-rebornos.sh "${pkgdir}/usr/bin/refresh-mirrors-rebornos.sh"
    install -D -m 755 refresh-mirrors-rebornos.svg  "${pkgdir}/usr/share/icons/hicolor/scalable/apps/refresh-mirrors-rebornos.svg"
    install -D -m 755 refresh-mirrors-rebornos.desktop "${pkgdir}/usr/share/applications/refresh-mirrors-rebornos.desktop"
    install -D -m 755 refresh-mirrors-rebornos.service "${pkgdir}/usr/lib/systemd/system/refresh-mirrors-rebornos.service"
}