support
createArchiveNamed: suggestedClassName inCategory: aSystemCategory
	"Adds a prefix and a suffix to the suggested class name. Ignores all characters that are not letters or numbers to be compatible with Smalltalk."
	
	| normalizedClassName |
	normalizedClassName := ('{1}{2}{3}' format: {
		(suggestedClassName beginsWith: 'Vi') ifTrue: [''] ifFalse: ['Vi'].
		(suggestedClassName select: [:ea | ea isAlphaNumeric]) capitalized.
		'Archive'}) asSymbol.
	
	^ ViScriptArchive subclass: normalizedClassName
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aSystemCategory