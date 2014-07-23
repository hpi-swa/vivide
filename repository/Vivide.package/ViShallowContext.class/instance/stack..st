as yet unclassified
stack: someContexts

	stack := someContexts.
	
	stack overlappingPairsDo: [:c1 :c2 |
		c1 instVarNamed: #sender put: c2].