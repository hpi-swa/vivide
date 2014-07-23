operations
doObject: anObject

	^ self editorClass
		ifNil: [nil]
		ifNotNil: [(super doObject: anObject)
			ifNil: [self defaultState]]