accessing
selection

	^ self model ifNil: [1 to: 0] ifNotNil: [:m |
		m hasChildren
			ifFalse: [1 to: 0]
			ifTrue: [m firstNode at: #selection ifAbsent: [1 to: 0]]]