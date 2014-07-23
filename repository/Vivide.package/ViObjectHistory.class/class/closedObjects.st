as yet unclassified
closedObjects

	^ ClosedObjects ifNil: [ClosedObjects := ViStampedHistory new limit: 10]