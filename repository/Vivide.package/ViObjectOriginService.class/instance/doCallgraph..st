operations - callgraph
doCallgraph: aCallgraph

	aCallgraph traceEvent ifNil: [^ 'Not configured.'].

	^ aCallgraph traceEvent isCodeCall
		ifTrue: [aCallgraph traceEvent userInputReceiver ifNil: ['Expression'] ifNotNil: [:obj | obj printString]]
		ifFalse: [aCallgraph traceEvent testClass name]