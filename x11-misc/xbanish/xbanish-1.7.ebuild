# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="banish the mouse cursor when typing, show it again when the mouse moves"
HOMEPAGE="https://github.com/jcs/xbanish"
SRC_URI="https://github.com/jcs/xbanish/archive/refs/tags/v1.7.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="amd64 x86"

S="${WORKDIR}/xbanish-1.7/"

DEPEND="
	x11-libs/libX11
	x11-libs/libXfixes
	x11-libs/libXi
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	make DESTDIR=${D} install || die "make install failed"
}
