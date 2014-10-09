accessing
sourceCode
	"Find source code in script. Do not decompile block to preserve custom formatting."

	^ (RBParser parseExpression: self script) children first
		in: [:node |
			node isBlock
				ifTrue: [node source copyFrom: node start to: node stop]
				ifFalse: [nil]]