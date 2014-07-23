accessing - nodes
textFor: anObject

	^ (ViLabelService doObject: anObject) ifNil: [anObject asString]