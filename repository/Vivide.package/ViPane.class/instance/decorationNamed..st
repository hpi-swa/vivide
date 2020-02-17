decorations
decorationNamed: name

	^ self submorphs
		detect: [:morph | (morph hasProperty: #isDecoration)
			and: [morph knownName = name]]
		ifNone: []