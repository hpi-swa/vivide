actions - navigation
goToDeepestBlock

	| node cursor result lastBlock |
	self hasUnacceptedChanges ifTrue: [^ self].
	
	node := RBParser parseExpression: self fullSourceCode.
	cursor := self textField cursorPosition + self fullSourceCodeInterval first - 1.

	result := self class detectDeepestBlockNode: node.
	result ifNil: [^ self].

	self fullSourceCodeInterval: result sourceInterval.
	self setVisibleSourceCode.
	
	self selectBlockStatementsStart.