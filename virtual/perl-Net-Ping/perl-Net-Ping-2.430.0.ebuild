# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/virtual/perl-Net-Ping/perl-Net-Ping-2.430.0.ebuild,v 1.7 2015/02/16 09:21:50 ago Exp $

EAPI=5

DESCRIPTION="Virtual for ${PN#perl-}"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~alpha amd64 hppa ~ia64 ppc ppc64 sparc x86 ~amd64-linux ~x86-linux ~x86-macos"
IUSE=""

DEPEND=""
RDEPEND="
	|| ( =dev-lang/perl-5.20* ~perl-core/Net-Ping-${PV} )
	!<perl-core/Net-Ping-${PV}
	!>perl-core/Net-Ping-${PV}-r999
"
