accessing - drop shadow
dropShadowTopLeft

	^ Icons
		at: #dropShadowTopLeft
		ifAbsentPut: [
			| result |
			result := self dropShadowTopRight.
			result flipBy: #horizontal centerAt: result center]