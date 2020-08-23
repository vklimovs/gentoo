# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Addresses to unmanaged memory"
HOMEPAGE="https://github.com/andrewthad/primitive-addr"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/primitive-0.6.4:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-lang/ghc-7.4.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2
"
