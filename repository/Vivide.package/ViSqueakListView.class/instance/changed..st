as yet unclassified
changed: aspect

	super changed: aspect.
	(aspect = #list or: [aspect = #listIndex])
		ifTrue: [self selectedNode
			ifNil: [self selectionChanged: #()]
			ifNotNil: [:node | self selectionChanged: {node}]].