geometry
optimalHeight

	^ submorphs
		ifEmpty: [self height]
		ifNotEmpty: [self submorphBounds height]