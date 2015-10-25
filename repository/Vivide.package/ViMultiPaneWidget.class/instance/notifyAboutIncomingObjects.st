updating
notifyAboutIncomingObjects

	self owner ifNotNil: [:pane |
		lastUpdateId := pane lastUpdateId].

	"Distribute incoming objects."
	self connections
		select: [:connection | (connection isValid
			"and: [connection isResults]")
			and: [connection source == self]]
		thenDo: [:connection | connection notify].