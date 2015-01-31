accessing
closedObjects

	^ closedObjects ifNil: [closedObjects := ViStampedHistory new limit: 10]