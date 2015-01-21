as yet unclassified
referenceFor: someObjects

	^ (self process: someObjects)
		ifEmpty: [nil]
		ifNotEmpty: [:someIds | self organization stepById: someIds first]