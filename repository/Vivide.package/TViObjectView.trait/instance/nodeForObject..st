support
nodeForObject: anObject

	^ (self nodesForObjects: {anObject})
		ifEmpty: [nil]
		ifNotEmpty: [:nodes | nodes first]