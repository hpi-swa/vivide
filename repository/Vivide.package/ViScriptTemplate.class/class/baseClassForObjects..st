templates - support
baseClassForObjects: someObjects

	^ someObjects
		ifEmpty: [Object]
		ifNotEmpty: [:objs |
			(objs allSatisfy: [:ea | ea isList])
				ifFalse: [objs first class]
				ifTrue: [objs first collect: [:object | object class]]]