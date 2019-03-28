squeak - kernel
doObject: anObject

	^ (super doObject: anObject)
		ifNil: [anObject
			ifNil: ['nil']
			ifNotNil: [:obj | [obj printStringLimitedTo: 100] on: Error do: ['???']]]