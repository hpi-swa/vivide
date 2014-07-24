*VivideDynamicAnalysis
doCallgraphDiff: aCallgraphDiff

	aCallgraphDiff hasCallgraphsOnly
		ifTrue: [^ ''].

	^ aCallgraphDiff isDifferent
		ifFalse: [self doObject: aCallgraphDiff firstNode]
		ifTrue: [aCallgraphDiff firstNode
			ifNotNil: [:n | self doObject: aCallgraphDiff firstNode]
			ifNil: [self doObject: aCallgraphDiff secondNode]]  