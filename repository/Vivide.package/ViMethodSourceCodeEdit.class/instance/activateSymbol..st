actions - activation
activateSymbol: aSymbol

	((self theClass theNonMetaClass lookupSelector: aSymbol)
		ifNil: [self theClass theMetaClass lookupSelector: aSymbol])
		ifNotNil: [:method | ^ self artifactRequested: method].

	^ super activateSymbol: aSymbol  