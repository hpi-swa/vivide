actions
insertObject: anObject type: aSymbol from: source before: aNode

	(self supportedTypes includes: aSymbol)
		ifFalse: [^ self].

	(aSymbol == #editorStates or: [aSymbol == #tapeStates]) ifTrue: [
		^ source == self
			ifTrue: [self moveState: anObject first before: (aNode at: #state)]
			ifFalse: [self insertStates: anObject before: (aNode at: #state)]].
	aSymbol == #editor ifTrue: [
		^ self insertEditor: anObject before: (aNode at: #state)].
	aSymbol == #tape ifTrue: [
		^ self insertTape: anObject before: (aNode at: #state)].
	aSymbol == #objects ifTrue: [
		anObject size == 1
			ifTrue: [^ self insertObject: anObject first before: (aNode at: #state)]
			ifFalse: [^ self insertObjects: anObject before: (aNode at: #state)]].
	aSymbol == #artifact ifTrue: [^ self insertObject: anObject object before: (aNode at: #state)].