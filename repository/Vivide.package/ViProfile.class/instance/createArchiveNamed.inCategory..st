serialization
createArchiveNamed: className inCategory: aSystemCategory

	^ archive := ViScriptArchive subclass: ('Vi', (className select: [:ea | ea isAlphaNumeric]) capitalized, 'Archive') asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aSystemCategory