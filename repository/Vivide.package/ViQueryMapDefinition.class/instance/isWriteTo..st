as yet unclassified
isWriteTo: variable

	(self variables includes: variable)
		ifFalse: [^ false].
		
	RBParseTreeSearcher new
		matches: '``@rcv `@msg: ``@args'
		do: [:node :answer | (node selector == #contents: 
			and: [node receiver name = variable])
				ifTrue: [^ true]];
		executeTree: (RBParser parseExpression: self sourceCode).
	^ false