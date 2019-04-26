actions - navigation
goToDeepestBlock

	| outer cursor inner |
	self hasUnacceptedChanges ifTrue: [^ self].
	self isWizardActive ifTrue: [^ self].
	
	outer := RBParser parseExpression: self fullSourceCode.
	cursor := self textField cursorPosition + self fullSourceCodeInterval first - 1.

	inner := ViScriptTemplate detectDeepestBlockNode: outer.
	inner ifNil: [^ self].
	inner := ViScriptTemplate detectObjectTransformation: inner.
		
	self fullSourceCodeInterval: inner sourceInterval.
	self setVisibleSourceCode.
	
	self selectBlockStatementsStart.