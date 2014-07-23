menu messages
browseIt

	| aSymbol |
	self lineSelectAndEmptyCheck: [^ self].
	(aSymbol := self selectedSymbol) == nil ifTrue: [^ morph flash].
	morph requestQuery: ((Smalltalk at: aSymbol
		ifAbsent: [^ morph requestImplementors: aSymbol])).