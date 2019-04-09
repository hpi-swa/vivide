actions - navigation
goUp

	| node cursor result previousResult index |
	self hasUnacceptedChanges ifTrue: [^ self].
	
	node := RBParser parseExpression: self fullSourceCode.
	
	"If the cursor is at the end, move one character inside the block. See #goDown."
	cursor := ((self textField cursorPosition -1 = self visibleSourceCode size) ifTrue: [self textField cursorPosition-1] ifFalse: [self textField cursorPosition]) + self fullSourceCodeInterval first - 1.
	
	result := node.
	index := 1.
	[(result isBlock
		"and: [result ~~ node]")
		and: [result sourceInterval = self fullSourceCodeInterval]]
			whileFalse: [
				result isBlock ifTrue: [
					previousResult := result.
					index := index + 1].
				result := result children
					detect: [:n | n sourceInterval includes: self fullSourceCodeInterval first]
					ifNone: [^ self "Bottom-most. Cancel."]].
	result := previousResult.
	result ifNil: [result := node].
	
	self fullSourceCodeInterval: result sourceInterval.
	self setVisibleSourceCode.
	
	self textField select: ((cursor - result start + 1) to: (cursor - result start)).