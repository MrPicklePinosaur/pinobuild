# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="totally not git!"
HOMEPAGE="https://github.com/NaiveGit/9it-cli"
SRC_URI="https://github.com/NaiveGit/${PN}/archive/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"

S="${WORKDIR}/${PN}-${P}/"

DEPEND="
	dev-libs/openssl
	sys-libs/zlib
"
RDEPEND="${DEPEND}"

src_install() {
	make DESTDIR="${D}" install || die "make install has failed"
}
