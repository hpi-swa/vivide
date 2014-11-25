as yet unclassified
validConnections

	^ self connections select: [:connection |
		connection isValid]