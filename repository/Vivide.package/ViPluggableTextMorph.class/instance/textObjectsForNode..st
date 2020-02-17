as yet unclassified
textObjectsForNode: aNode

	^ aNode nodes
		collect: [:node | (node at: #text ifAbsent: [(node at: #object) printString]) asText]