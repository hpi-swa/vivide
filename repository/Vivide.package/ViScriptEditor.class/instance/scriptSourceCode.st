source code
scriptSourceCode
	"Extract that part of fullSourceCode that represents the script's [:in :out |] block. Fetch the actual text and not decompile the block (closure) to preserve custom formatting and comments."

	^ (RBParser parseExpression: self fullSourceCode) children first
		in: [:node |
			node isBlock
				ifTrue: [node source copyFrom: node start to: node stop]
				ifFalse: [nil]]