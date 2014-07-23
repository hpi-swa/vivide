operations
doAssociation: anAssociation

	^ anAssociation key isString
		ifTrue: [anAssociation key]
		ifFalse: [self doObject: anAssociation key]