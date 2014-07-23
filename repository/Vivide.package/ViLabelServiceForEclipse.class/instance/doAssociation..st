as yet unclassified
doAssociation: assoc

	^ assoc key isBehavior
		ifTrue: [assoc value asString]
		ifFalse: [ViLabelService doObject: assoc]