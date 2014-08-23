accessing - drop shadow
dropShadowBottomLeft

	^ Icons
		at: #dropShadowBottomLeft
		ifAbsentPut: [
			| result |
			result := self dropShadowTopLeft.
			result flipBy: #vertical centerAt: result center]