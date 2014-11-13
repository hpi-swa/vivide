as yet unclassified
outputCount

	^ (self valueOfProperty: #outputKind) isCollection
		ifFalse: [1]
		ifTrue: [(self valueOfProperty: #outputKind) size]