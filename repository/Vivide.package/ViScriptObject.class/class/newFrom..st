instance creation
newFrom: dictionaryOrScriptObject

	| dict |
	dict := dictionaryOrScriptObject isDictionary
		ifTrue: [dictionaryOrScriptObject]
		ifFalse: [dictionaryOrScriptObject asDictionary].
	^ (dict at: #class ifAbsent: [Smalltalk classNamed: (dict at: #className)]) new
		loadFromDictionary: dict;
		yourself