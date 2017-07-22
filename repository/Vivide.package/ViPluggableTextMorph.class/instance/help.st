accessing
help

	^ self model
		ifNil: [nil]
		ifNotNil: [:m | m hasChildren
			ifFalse: [nil]
			ifTrue: [(m firstNode at: #balloonText ifAbsent: [m firstNode at: #help ifAbsent: [nil]])]]