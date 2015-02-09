as yet unclassified
createArchiveNamed: className inCategory: aSystemCategory

	^ archive := ViScriptArchive subclass: (className select: [:char | char isLetter]) asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aSystemCategory