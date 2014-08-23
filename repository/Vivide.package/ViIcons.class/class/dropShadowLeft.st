accessing - drop shadow
dropShadowLeft

	^ Icons
		at: #dropShadowLeft
		ifAbsentPut: [
			| result |
			result := self dropShadowRight.
			result flipBy: #horizontal centerAt: result center]