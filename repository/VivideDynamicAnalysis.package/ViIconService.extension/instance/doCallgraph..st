*VivideDynamicAnalysis
doCallgraph: aCallgraph

	aCallgraph traceEvent ifNotNil: [:evt |
		evt isUserInput ifTrue: [^ UiFugueIcons keyboardIcon]].
	
	^ UiFugueIcons nodeSelectAllIcon  