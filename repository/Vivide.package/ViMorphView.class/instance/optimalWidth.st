geometry
optimalWidth

	^ submorphs
		ifEmpty: [self width]
		ifNotEmpty: [self submorphBounds width]