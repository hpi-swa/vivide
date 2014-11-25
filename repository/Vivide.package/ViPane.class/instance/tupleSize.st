tuples
tupleSize

	^ self validConnections count: [:c | c target == self]