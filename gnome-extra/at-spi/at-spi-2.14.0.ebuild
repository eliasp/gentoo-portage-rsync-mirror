# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/gnome-extra/at-spi/at-spi-2.14.0.ebuild,v 1.2 2014/12/22 21:39:06 eva Exp $

EAPI="5"

DESCRIPTION="The Gnome Accessibility Toolkit"
HOMEPAGE="http://projects.gnome.org/accessibility/"
SRC_URI=""

LICENSE="metapackage"
SLOT="2"
KEYWORDS="~amd64 ~arm ~hppa ~x86"
IUSE=""

RDEPEND="
	>=app-accessibility/at-spi2-atk-${PV}:2
	>=app-accessibility/at-spi2-core-${PV}:2
	>=dev-python/pyatspi-${PV}
	!<gnome-extra/at-spi-1.32.0-r1
"
DEPEND=""
