add/remove
createArchiveNamed: className inCategory: aSystemCategory

	^ archive := ViScriptArchive subclass: (className select: [:char | char isLetter]) asSymbol capitalized
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aSystemCategory