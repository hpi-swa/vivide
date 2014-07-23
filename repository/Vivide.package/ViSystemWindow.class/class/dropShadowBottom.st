drop shadows
dropShadowBottom

	^ self shadowCache
		at: #dropShadowBottom
		ifAbsentPut: [
			| result |
			result := self dropShadowTop.
			result flipBy: #vertical centerAt: result center]