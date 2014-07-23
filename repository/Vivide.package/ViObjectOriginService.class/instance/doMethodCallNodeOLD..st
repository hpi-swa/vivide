operations - callgraph
doMethodCallNodeOLD: aMethodCallNode

	^ aMethodCallNode callgraph traceEvent itemKind == #expression
		ifTrue: ['"', aMethodCallNode callgraph traceEvent itemExpression withoutLineEndings, '"']
		ifFalse: [aMethodCallNode callgraph traceEvent testClass name, ' \>\> ', aMethodCallNode callgraph traceEvent testSelector]