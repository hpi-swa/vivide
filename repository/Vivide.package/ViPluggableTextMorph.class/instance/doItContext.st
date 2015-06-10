as yet unclassified
doItContext

	^ self model ifNotNil: [:m |
		m firstNode at: #context ifAbsent: []]