*VivideDynamicAnalysis
doCallgraph: aCallgraph  

	aCallgraph traceEvent ifNil: [^ aCallgraph printString].
	
	^ aCallgraph traceEvent isCodeCall
		ifTrue: [aCallgraph traceEvent userInputEvent ifNil: ['"', aCallgraph traceEvent itemExpression withoutLineEndings, '"'] ifNotNil: [:evt | evt printString]]
		ifFalse: [aCallgraph traceEvent testSelector]