operations
doObject: anObject

	^ {ViObjectListEditor}, ((super doObject: anObject) ifNil: [#()]) 