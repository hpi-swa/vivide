as yet unclassified
inputCount

	^ (self valueOfProperty: #inputKind) isCollection
		ifFalse: [1]
		ifTrue: [(self valueOfProperty: #inputKind) size]