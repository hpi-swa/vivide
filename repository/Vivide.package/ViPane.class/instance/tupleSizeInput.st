connections and tuples
tupleSizeInput
	"Estimate the tuple size from the input objects.See ViPane >> #baseClass."

	^ self objects
		ifEmpty: [0]
		ifNotEmpty: [:o |
			(o allSatisfy: [:ea | ea isList])
				ifFalse: [1]
				ifTrue: [o first size]]