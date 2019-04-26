actions - navigation
goDownToBottom

	| node cursor result lastBlock |
	self hasUnacceptedChanges ifTrue: [^ self].
	self isWizardActive ifTrue: [^ self].
	
	node := RBParser parseExpression: self fullSourceCode.
	cursor := self textField cursorPosition + self fullSourceCodeInterval first - 1.
	result := node.
	[result isNil or: [result children isEmpty]] whileFalse: [
		result isBlock ifTrue: [lastBlock := result].
		result := result children
			detect: [:n | n sourceInterval includes: cursor]
			ifNone: [nil]].

	result := lastBlock.
	result ifNil: [^ self].
	result := ViScriptTemplate detectObjectTransformation: result.

	self fullSourceCodeInterval: result sourceInterval.
	self setVisibleSourceCode.
	
	self textField select: ((cursor - result start + 1) to: (cursor - result start)).