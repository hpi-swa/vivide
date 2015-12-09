as yet unclassified
referenceId

	^ (self process: #(1))
		ifEmpty: [nil]
		ifNotEmpty: [:someIds | someIds first]