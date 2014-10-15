as yet unclassified
sourceCodeShort

	^ (ViScriptEditor detectDeepestBlockNode: (RBParser parseExpression: self sourceCode))
		ifNil: [self sourceCode]
		ifNotNil: [:node |
			self sourceCode copyFrom: node sourceInterval first to:  node sourceInterval last]