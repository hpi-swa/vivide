as yet unclassified
nextObjectNotifiers

	^ Array streamContents: [:strm | self nextStepsDo: [:step |
		strm nextPutAll: step objectNotifiers]]