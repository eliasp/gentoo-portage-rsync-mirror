# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase-data/kdebase-data-4.14.3.ebuild,v 1.6 2015/02/16 08:31:50 ago Exp $

EAPI=5

KMNAME="kde-runtime"
KMNOMODULE="true"
inherit kde4-meta

DESCRIPTION="Icons, localization data and various .desktop files from kdebase"
IUSE="+wallpapers"
KEYWORDS="amd64 ~arm ppc ~ppc64 x86 ~x86-fbsd ~amd64-linux ~x86-linux"

RDEPEND="
	wallpapers? ( $(add_kdebase_dep kde-wallpapers) )
	x11-themes/hicolor-icon-theme
"

KMEXTRA="
	l10n/
	localization/
	pics/
"
# Note that the eclass doesn't do this for us, because of KMNOMODULE="true".
KMEXTRACTONLY="
	config-runtime.h.cmake
	kde4
"

src_configure() {
	# Remove remnants of hicolor-icon-theme
	sed -e "s:add_subdirectory[[:space:]]*([[:space:]]*hicolor[[:space:]]*):#donotwant:g" \
		-i pics/CMakeLists.txt \
		|| die "failed to remove remnants of hicolor-icon-theme"

	kde4-meta_src_configure
}
