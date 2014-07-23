operations
doObject: anObject ifNil: aBlock

	^ (self new doObject: anObject)
		ifNil: aBlock