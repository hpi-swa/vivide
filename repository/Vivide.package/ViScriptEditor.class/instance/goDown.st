actions - navigation
goDown

	| node cursor result index |
	self hasUnacceptedChanges ifTrue: [^ self].
	
	node := RBParser parseExpression: self fullSourceCode.
	cursor := self textField cursorPosition + self fullSourceCodeInterval first - 1.
	result := node.
	index := 0.
	[(result isBlock
		"and: [result ~~ node]")
		and: [(result sourceInterval first > self fullSourceCodeInterval first)
			or: [result sourceInterval last < self fullSourceCodeInterval last]]]
			whileFalse: [
				result := result children
					detect: [:n | n sourceInterval includes: cursor]
					ifNone: [^ self "Cancel."].
				result isBlock ifTrue: [index := index + 1]].

	self fullSourceCodeInterval: result sourceInterval.
	self setVisibleSourceCode.
	
	self textField select: ((cursor - result start + 1) to: (cursor - result start)).