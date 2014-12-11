menu messages
browseIt

	| aSymbol |
	self lineSelectAndEmptyCheck: [^ self].
	(aSymbol := self selectedSymbol) == nil ifTrue: [^ morph flash].
	
	(Smalltalk at: aSymbol ifAbsent: [nil])
		ifNil: [morph requestImplementors: aSymbol]
		ifNotNil: [:cls | #outline openScriptWith: {cls}].