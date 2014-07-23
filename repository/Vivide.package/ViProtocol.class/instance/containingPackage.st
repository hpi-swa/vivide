accessing
containingPackage

	self isExtension
		ifFalse: [^ PackageOrganizer default packageOfClass: self theClass ifNone: []]
		ifTrue: [
			| pkgname tokens |
			tokens := self protocolname allButFirst findTokens: '-'.
			(tokens size to: 1 by: -1) do: [:end |
				pkgname := ((1 to: end) inject: '' into: [:nm :idx | nm := nm, '-', (tokens at: idx)]) allButFirst.
				"Need to be case-insensitive, because that's the way Monticello works."
				(PackageOrganizer default packages detect: [:pkg | pkg name asLowercase = pkgname asLowercase] ifNone: [])
					ifNotNil: [:pkg | ^ pkg]]].
	^ nil