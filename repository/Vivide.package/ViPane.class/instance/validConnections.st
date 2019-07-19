connections and tuples
validConnections

	^ self connections select: [:connection |
		connection isValid]