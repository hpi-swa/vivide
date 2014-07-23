as yet unclassified
inputCount

	^ self definition inputKind isCollection
		ifFalse: [1]
		ifTrue: [self definition inputKind size]