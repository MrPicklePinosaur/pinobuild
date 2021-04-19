# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit savedconfig toolchain-funcs

DESCRIPTION="suckless status monitor"
HOMEPAGE="https://tools.suckless.org/slstatus"
SRC_URI="https://files.danieliu.xyz/repos/bin/slstatus/slstatus-202011302032.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="
	x11-libs/libX11
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	# this is sorta dumb
	workingdir="slstatus-202011302032"
	mkdir "$workingdir"
	mv "$A" "$workingdir" 
	cd "$workingdir"
	unpack "$A"
}

src_prepare() {
	default

	restore_config config.h
}

src_install() {
	emake DESTDIR="${D}" install

	save_config config.h
}
