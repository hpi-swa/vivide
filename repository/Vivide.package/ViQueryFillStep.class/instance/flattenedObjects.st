as yet unclassified
flattenedObjects
	"Remove one level of collections if any."

	^ Array streamContents: [:stream | self objects do: [:object |
		(ViQueryInterpreter isCollection: object)
			ifTrue: [stream nextPutAll: object]
			ifFalse: [stream nextPut: object]]]