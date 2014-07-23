actions
insertObject: anObject type: aSymbol from: source after: aNode

	(self supportedTypes includes: aSymbol)
		ifFalse: [^ self].

	(aSymbol == #editorStates or: [aSymbol == #tapeStates]) ifTrue: [
		^ source == self
			ifTrue: [self moveState: anObject first after: (aNode at: #state)]
			ifFalse: [self insertStates: anObject after: (aNode at: #state)]].
	aSymbol == #editor ifTrue: [
		^ self insertEditor: anObject after: (aNode at: #state)].
	aSymbol == #tape ifTrue: [
		^ self insertTape: anObject after: (aNode at: #state)].
	aSymbol == #objects ifTrue: [
		anObject size == 1
			ifTrue: [^ self insertObject: anObject first after: (aNode at: #state)]
			ifFalse: [^ self insertObjects: anObject after: (aNode at: #state)]].
	aSymbol == #artifact ifTrue: [^ self insertObject: anObject object after: (aNode at: #state)].