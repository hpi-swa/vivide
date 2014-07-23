operations
doObject: anObject

	^ (super doObject: anObject)  
		ifNil: [anObject class name]