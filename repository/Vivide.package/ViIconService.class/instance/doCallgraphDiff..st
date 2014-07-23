operations - callgraph
doCallgraphDiff: aCallgraphDiff

	aCallgraphDiff hasCallgraphsOnly
		ifTrue: [^ UiFugueIcons nodeDesignIcon].

	^ aCallgraphDiff isDifferent
		ifFalse: [self doObject: aCallgraphDiff firstNode]
		ifTrue: [aCallgraphDiff firstNode
			ifNotNil: [:n | self doObject: aCallgraphDiff firstNode]
			ifNil: [self doObject: aCallgraphDiff secondNode]]