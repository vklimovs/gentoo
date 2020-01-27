# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="HTTP"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A library for client-side HTTP"
HOMEPAGE="https://github.com/haskell/HTTP"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha amd64 ia64 ppc ppc64 sparc x86 ~amd64-linux ~ppc-macos ~x86-macos"
# hackport-args: --always-disabled='mtl1 network23 old-base warn-as-error'
IUSE=""

RDEPEND="<dev-haskell/network-2.5:=[profile?]
		dev-haskell/parsec:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		>=dev-haskell/mtl-2.0:=[profile?]
		<dev-haskell/mtl-2.2:=[profile?]"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"
RESTRICT=test # missing modules: Could not find module `Httpd'
#		test? ( =dev-haskell/case-insensitive-0.4*
#			>=dev-haskell/conduit-0.4
#			<dev-haskell/conduit-0.6
#			=dev-haskell/deepseq-1.3*
#			>=dev-haskell/http-types-0.6
#			<dev-haskell/http-types-0.8
#			dev-haskell/httpd-shed
#			dev-haskell/hunit
#			=dev-haskell/puremd5-2.1*
#			>=dev-haskell/split-0.1
#			<dev-haskell/split-0.3
#			dev-haskell/test-framework
#			dev-haskell/test-framework-hunit
#			>=dev-haskell/wai-1.2
#			<dev-haskell/wai-1.4
#			>=dev-haskell/warp-1.2
#			<dev-haskell/warp-1.4
#		)

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-network23 \
		--flag=-warn-as-error \
		--flag=-mtl1 \
		--flag=-old-base \
		--disable-tests
}
