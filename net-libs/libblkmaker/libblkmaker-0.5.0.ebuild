# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-libs/libblkmaker/libblkmaker-0.5.0.ebuild,v 1.1 2014/09/16 00:08:09 blueness Exp $

EAPI=5

DESCRIPTION="C implementation of getblocktemplate (BIP 22)"
HOMEPAGE="https://gitorious.org/bitcoin/libblkmaker"
LICENSE="MIT"

SRC_URI="https://gitorious.org/bitcoin/${PN}/archive/v${PV}.tar.gz -> ${P}.tgz"
SLOT="0/7"
KEYWORDS="~amd64 ~arm ~mips ~ppc ~ppc64 ~x86"
IUSE=""

DEPEND="
	>=dev-libs/jansson-2.0.0
	dev-libs/libbase58
"
RDEPEND="${DEPEND}
	!<net-misc/bfgminer-3.0.3
"

S="${WORKDIR}/bitcoin-libblkmaker/"

src_prepare() {
	./autogen.sh || die
}
