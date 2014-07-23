drop shadows
dropShadowTopLeft

	^ self shadowCache
		at: #dropShadowTopLeft
		ifAbsentPut: [
			| result |
			result := self dropShadowTopRight.
			result flipBy: #horizontal centerAt: result center]