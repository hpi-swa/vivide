actions
insertObject: anObject type: aSymbol from: source before: aNode

	(self supportedTypes includes: aSymbol)
		ifFalse: [^ self].

	aSymbol == #queries ifTrue: [
		^ source == self
			ifTrue: [self moveState: anObject first before: (aNode at: #state)]
			"ifFalse: [self insertStates: anObject before: (aNode at: #state)]"].