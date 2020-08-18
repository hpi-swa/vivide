decorations
decorationNamed: name ifAbsent: block

	^ self decorations
		detect: [:morph | morph knownName = name]
		ifNone: [block value]