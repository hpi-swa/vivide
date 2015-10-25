listening
notifyChangedResults

	self beginUpdateChain.

	self connections
		select: [:connection | (connection isValid
			and: [connection isResults])
			and: [connection source == self]]
		thenDo: [:connection | connection notify].