drop shadows
dropShadowTop

	^ self shadowCache
		at: #dropShadowTop
		ifAbsentPut: [
			| result raw |
			raw := self dropShadow.
			result := Form extent: (1 @ raw height) depth: 32.
			result copy: result boundingBox from: 0@0 in: raw rule: Form over.
			result]