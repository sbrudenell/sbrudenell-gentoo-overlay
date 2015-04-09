# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit git-r3

EGIT_REPO_URI="https://github.com/sbrudenell/denon-multiplexd.git"
SRC_URI=""
KEYWORDS=""

DESCRIPTION="A simple daemon to multiplex control connections to a Denon networked A/V receiver."
HOMEPAGE="https://github.com/sbrudenell/denon-multiplexd"

LICENSE="MIT"
SLOT="0"
IUSE=""

RDEPEND=""
DEPEND=""

src_configure() {
  echo "no configure until steve learns autotools"
}

src_install() {
  into /usr
  dosbin ${PN}
  newinitd "${FILESDIR}/${PN}.init" ${PN}
}
