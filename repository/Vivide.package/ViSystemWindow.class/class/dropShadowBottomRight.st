drop shadows
dropShadowBottomRight

	^ self shadowCache
		at: #dropShadowBottomRight
		ifAbsentPut: [
			| result |
			result := self dropShadowTopRight.
			result flipBy: #vertical centerAt: result center]