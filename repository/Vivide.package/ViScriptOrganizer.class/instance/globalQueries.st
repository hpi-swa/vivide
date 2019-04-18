accessing
globalQueries

	^ self orderedSteps select: [:query | query isGlobal and: [query nextLabel notNil]]