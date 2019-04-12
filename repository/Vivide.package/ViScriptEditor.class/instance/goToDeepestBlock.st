actions - navigation
goToDeepestBlock

	| outer cursor inner |
	self hasUnacceptedChanges ifTrue: [^ self].
	self isWizardActive ifTrue: [^ self].
	
	outer := RBParser parseExpression: self fullSourceCode.
	cursor := self textField cursorPosition + self fullSourceCodeInterval first - 1.

	inner := self class detectDeepestBlockNode: outer.
	inner ifNil: [^ self].
	inner := self class detectObjectTransformation: inner.
		
	self fullSourceCodeInterval: inner sourceInterval.
	self setVisibleSourceCode.
	
	self selectBlockStatementsStart.