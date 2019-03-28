squeak - kernel
doObject: anObject

	^ (super doObject: anObject)  
		ifNil: [anObject class name]