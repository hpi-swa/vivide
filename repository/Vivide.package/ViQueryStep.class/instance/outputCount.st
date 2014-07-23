as yet unclassified
outputCount

	^ self definition outputKind isCollection
		ifFalse: [1]
		ifTrue: [self definition outputKind size]