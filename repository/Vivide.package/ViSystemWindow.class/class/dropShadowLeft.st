drop shadows
dropShadowLeft

	^ self shadowCache
		at: #dropShadowLeft
		ifAbsentPut: [
			| result |
			result := self dropShadowRight.
			result flipBy: #horizontal centerAt: result center]