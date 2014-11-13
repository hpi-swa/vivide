as yet unclassified
world

	^ self value
		ifNil: [ActiveWorld]
		ifNotNil: [:vivide | vivide world]