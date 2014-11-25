listening
notifyChangedResults

	self connections
		select: [:connection | (connection isValid
			and: [connection isResults])
			and: [connection source == self]]
		thenDo: [:connection | connection notify].