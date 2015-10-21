as yet unclassified
localArchive

	^ (Smalltalk classNamed: 'ViLocalScriptArchive')
		ifNil: [self subclass: #ViLocalScriptArchive
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: 'VivideTemporary']