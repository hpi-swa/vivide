accessing
callgraph

	^ self node ifNotNil: [:node | node callgraph]