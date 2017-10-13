tuples
tupleSize

	self connections ifEmpty: [^ self tupleSizeInput].
	^ self connections count: [:c | c target == self]