actions
addObject: anObject type: aSymbol from: source

	(self supportedTypes includes: aSymbol)
		ifFalse: [^ self].

	aSymbol == #editorStates ifTrue: [
		^ source == self
			ifTrue: [self moveState: anObject first after: self editorStates last]
			ifFalse: [self addState: anObject first]].
	aSymbol == #editor ifTrue: [^ self addEditor: anObject].
	aSymbol == #tape ifTrue: [^ self addTape: anObject].
	aSymbol == #objects ifTrue: [
		anObject size == 1
			ifTrue: [^ self addObject: anObject first]
			ifFalse: [^ self addObjects: anObject]].
	aSymbol == #artifact ifTrue: [^ self addObject: anObject object].