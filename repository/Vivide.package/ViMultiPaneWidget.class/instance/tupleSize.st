tuples
tupleSize

	^ self connections count: [:c | c target == self]