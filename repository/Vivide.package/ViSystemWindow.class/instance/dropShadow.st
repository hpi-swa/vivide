drop shadows
dropShadow

	^ dropShadow ifNil: [dropShadow := self class
		createDropShadowForBounds: self boundsForShadow
		width: self shadowWidth
		dataSource: self class]