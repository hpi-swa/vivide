as yet unclassified
flattenedObjects
	"Remove one level of collections if any."

	^ Array streamContents: [:stream | self objects do: [:object |
		stream nextPutAll: object asList]]