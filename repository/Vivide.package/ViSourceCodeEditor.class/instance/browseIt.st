menu messages
browseIt
	"Browse class or implementors or query class by pattern."

	| aSymbol |
	self lineSelectAndEmptyCheck: [^ self].

	((aSymbol := self selectedSymbol) notNil and: [aSymbol first isLowercase])
		ifTrue: [morph requestImplementors: aSymbol].
	
	aSymbol ifNil: [aSymbol := self selection asString].
	
	(SystemNavigation default allClassesAndTraitsMatching: aSymbol)
		ifNotEmpty: [:classes |
			classes size = 1
				ifTrue: [ #outline openScriptWith: classes]
				ifFalse: [ #defaultPropertiesExtended openScriptWith: classes]].