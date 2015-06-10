as yet unclassified
selection

	^ self model ifNil: [1 to: 0] ifNotNil: [:m |
		m firstNode at: #selection ifAbsent: [1 to: 0]]