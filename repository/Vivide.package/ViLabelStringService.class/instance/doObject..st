operations
doObject: anObject

	^ (super doObject: anObject)
		ifNil: [anObject
			ifNil: ['nil']
			ifNotNil: [:obj | [obj printString] on: Error do: ['???']]]