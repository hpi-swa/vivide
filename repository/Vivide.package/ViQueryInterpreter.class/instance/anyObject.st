accessing - convenience
anyObject

	^ self objects
		ifEmpty: [nil]
		ifNotEmpty: [:objs | objs first] 