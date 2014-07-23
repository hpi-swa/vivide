operations - callgraph
doCallgraphDiff: aCallgraphDiff

	^ aCallgraphDiff isChildDifferent
		ifFalse: []
		ifTrue: [aCallgraphDiff isDifferent
			ifTrue: [aCallgraphDiff firstNode
				ifNil: [Color green muchDarker paler alpha: 0.3]
				ifNotNil: [Color blue lighter alpha: 0.3]]
			ifFalse: [(Color gray: 0.85) alpha: 0.7]]