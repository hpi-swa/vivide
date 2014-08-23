accessing - drop shadow
dropShadowBottom

	^ Icons
		at: #dropShadowBottom
		ifAbsentPut: [
			| result |
			result := self dropShadowTop.
			result flipBy: #vertical centerAt: result center]