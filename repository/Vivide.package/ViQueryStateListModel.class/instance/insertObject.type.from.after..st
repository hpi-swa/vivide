actions
insertObject: anObject type: aSymbol from: source after: aNode

	(self supportedTypes includes: aSymbol)
		ifFalse: [^ self].

	aSymbol == #queries ifTrue: [
		^ source == self
			ifTrue: [self moveState: anObject first after: (aNode at: #state)]
			"ifFalse: [self insertStates: anObject after: (aNode at: #state)]"].