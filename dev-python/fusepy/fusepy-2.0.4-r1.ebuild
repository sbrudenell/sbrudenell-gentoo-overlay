# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy )

inherit distutils-r1

DESCRIPTION="Simple ctypes bindings for FUSE"
HOMEPAGE="https://github.com/terencehonles/fusepy https://pypi.python.org/pypi/fusepy"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.bz2"
SRC_URI="https://github.com/terencehonles/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RDEPEND=">=sys-fs/fuse-2.6"
DEPEND="${RDEPEND}"

PATCHES=(
	"${FILESDIR}"/include-fusell.patch
)

python_install_all() {
	use examples && local EXAMPLES=( examples/. )
	distutils-r1_python_install_all
}
