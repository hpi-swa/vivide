actions - activation
activateSymbol: aSymbol

	"Classes and other global variables."
	(Smalltalk at: aSymbol ifAbsent: []) ifNotNil: [:obj |
		^ self activateObject: obj].
	
	"The one implementor of a symbol."
	(SystemNavigation default allImplementorsOf: aSymbol)
		ifNotNil: [:refs | refs size = 1 ifTrue: [^ self artifactRequested: refs first]].
	
	"All implementors of a symbol."
	^ self textMorph requestImplementors: aSymbol