accessing
referenceStack

	^ referenceStack ifNotNil: [self copyStack: referenceStack]