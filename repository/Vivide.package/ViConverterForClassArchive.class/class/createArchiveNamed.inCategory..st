support
createArchiveNamed: className inCategory: aSystemCategory

	^ ViScriptArchive subclass: ('Vi', (className select: [:ea | ea isAlphaNumeric]) capitalized, 'Archive') asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aSystemCategory