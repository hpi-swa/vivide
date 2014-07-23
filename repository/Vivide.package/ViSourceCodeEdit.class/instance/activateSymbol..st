actions - activation
activateSymbol: aSymbol

	(Smalltalk at: aSymbol ifAbsent: []) ifNotNil: [:obj |
		^ self activateObject: obj].
	
	(SystemNavigation default allImplementorsOf: aSymbol)
		ifNotNil: [:refs | refs size == 1 ifTrue: [^ self artifactRequested: refs first]].
	
	^ self textMorph requestImplementors: aSymbol