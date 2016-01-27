*vivide-support
logObject: anObject

	ViProfile active ifNotNil: [:profile |
		profile transcriptHistory addObject: anObject].