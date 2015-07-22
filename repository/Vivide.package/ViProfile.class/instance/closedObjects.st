accessing - history
closedObjects

	^ closedObjects ifNil: [closedObjects := ViStampedHistory new limit: 10]