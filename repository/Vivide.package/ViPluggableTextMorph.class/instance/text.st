as yet unclassified
text

	^ self model
		ifNil: ['']
		ifNotNil: [:m | m hasChildren
			ifFalse: ['']
			ifTrue: [(m firstNode at: #text ifAbsent: [''])]]