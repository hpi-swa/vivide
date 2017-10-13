as yet unclassified
tupleSizeInput
	"Estimate the tuple size from the input objects."

	^ self objects
		ifEmpty: [1]
		ifNotEmpty: [:o |
			(o allSatisfy: [:ea | ea isList])
				ifFalse: [1]
				ifTrue: [o first size]]