# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite: fails to build
inherit haskell-cabal

DESCRIPTION="Parse source to template-haskell abstract syntax"
HOMEPAGE="https://hackage.haskell.org/package/haskell-src-meta"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # tests/Splices.hs:69:77: error: Not in scope: data constructor ‘Extension.QuantifiedConstraints’

RDEPEND=">=dev-haskell/haskell-src-exts-1.18:=[profile?] <dev-haskell/haskell-src-exts-1.24:=[profile?]
	>=dev-haskell/syb-0.1:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-haskell/th-orphans-0.12:=[profile?] <dev-haskell/th-orphans-0.14:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	default

	cabal_chdeps \
		'haskell-src-exts >= 1.18 && < 1.23' 'haskell-src-exts >= 1.18 && < 1.24'
}
