# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/autopep8/autopep8-9999.ebuild,v 1.10 2014/12/23 07:01:50 idella4 Exp $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy pypy3 )

inherit distutils-r1 git-2

DESCRIPTION="Automatically formats Python code to conform to the PEP 8 style guide"
HOMEPAGE="https://github.com/hhatto/autopep8 http://pypi.python.org/pypi/autopep8"
SRC_URI=""
EGIT_REPO_URI="git://github.com/hhatto/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="test"

RDEPEND=">=dev-python/pep8-1.5.7[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( ${RDEPEND}
		>=dev-python/pydiff-0.1.2[${PYTHON_USEDEP}] )"

python_test() {
	"${PYTHON}" setup.py test || die
}
