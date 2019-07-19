connections and tuples
baseClass
	"Mirrors ViScriptStep >> #baseClass. See ViPane >> #tupleSizeInput."
	
	^ self objects
		ifEmpty: [Object]
		ifNotEmpty: [:objs |
			(objs allSatisfy: [:ea | ea isList])
				ifFalse: [objs first class]
				ifTrue: [objs first collect: [:object | object class]]]