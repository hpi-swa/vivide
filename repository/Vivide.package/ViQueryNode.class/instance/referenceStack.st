accessing
referenceStack

	^ referenceStack ifNil: [referenceStack := Stack new]