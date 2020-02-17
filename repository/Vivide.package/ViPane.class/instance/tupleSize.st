connections and tuples
tupleSize

	^ self validInputConnections
		ifEmpty: [self tupleSizeInput]
		ifNotEmpty: [:connections | connections size]