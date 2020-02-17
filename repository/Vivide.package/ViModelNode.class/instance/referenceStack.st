stack
referenceStack

	^ referenceStack ifNotNil: [self copyStack: referenceStack]