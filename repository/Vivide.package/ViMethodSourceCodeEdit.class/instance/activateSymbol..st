actions - activation
activateSymbol: aSymbol

	| a b |
	a := self theClass.
	b := (self theClass isMeta
		ifTrue: [self theClass theNonMetaClass]
		ifFalse: [self theClass theMetaClass]).

	((a lookupSelector: aSymbol) ifNil: [b lookupSelector: aSymbol])
		ifNotNil: [:method | ^ self artifactRequested: method].

	^ super activateSymbol: aSymbol  