connections and tuples
validOutputConnections

	^ self connections select: [:connection |
		connection isValid and: [connection source == self]]