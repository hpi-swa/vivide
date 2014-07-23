drop shadows
dropShadowBottomLeft

	^ self shadowCache
		at: #dropShadowBottomLeft
		ifAbsentPut: [
			| result |
			result := self dropShadowTopLeft.
			result flipBy: #vertical centerAt: result center]