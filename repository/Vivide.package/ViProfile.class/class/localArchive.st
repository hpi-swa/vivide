as yet unclassified
localArchive

	^ (Smalltalk classNamed: 'ViLocalScriptArchive')
		ifNil: [ViScriptArchive subclass: #ViLocalScriptArchive
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: 'VivideTemporary']