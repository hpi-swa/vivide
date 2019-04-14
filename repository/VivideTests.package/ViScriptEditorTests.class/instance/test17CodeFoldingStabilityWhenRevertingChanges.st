tests - single
test17CodeFoldingStabilityWhenRevertingChanges
	"The user just discards changes. Return to the previous representation."
	
	self assert: '[:num | num * num]' equals: editor visibleSourceCode.
	
	editor selectBlockStatements.
	self type: 'num - 1' in: editor.
	
	self
		assert: editor hasUnacceptedChanges;
		assert: '[:num | num - 1]' equals: editor visibleSourceCode.
	
	editor clear. "Revert changes."
	
	self assert: '[:num | num * num]' equals: editor visibleSourceCode.