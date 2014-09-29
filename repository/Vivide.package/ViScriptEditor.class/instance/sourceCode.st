as yet unclassified
sourceCode

	^ (RBParser parseExpression: self script) children first
		in: [:node |
			node isBlock
				ifTrue: [node source copyFrom: node start to: node stop]
				ifFalse: [nil]]