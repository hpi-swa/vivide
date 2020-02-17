connections and tuples
validInputConnections

	^ self connections select: [:connection |
		connection isValid and: [connection target == self]]