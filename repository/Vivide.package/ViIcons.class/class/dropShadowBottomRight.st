accessing - drop shadow
dropShadowBottomRight

	^ Icons
		at: #dropShadowBottomRight
		ifAbsentPut: [
			| result |
			result := self dropShadowTopRight.
			result flipBy: #vertical centerAt: result center]