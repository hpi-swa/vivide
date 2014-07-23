as yet unclassified
variables

	^ (RBParser parseExpression: self sourceCode) blockVariables
		allButFirst: (self wantsTwoObjectsAtOnce
			ifTrue: [2]
			ifFalse: [self wantsNoObjects
				ifTrue: [0]
				ifFalse: [1 "each or all"]])