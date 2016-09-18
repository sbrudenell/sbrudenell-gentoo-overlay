# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: 

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4,3_5} )
inherit distutils-r1

DESCRIPTION="Fast, standard compliant Bencode serialization"
HOMEPAGE="https://github.com/kosqx/better-bencode"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
