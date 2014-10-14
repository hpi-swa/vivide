actions - navigation
goDownToBottom

	| node cursor result lastBlock |
	self hasUnacceptedChanges ifTrue: [^ self].
	
	node := RBParser parseExpression: self script.
	cursor := edit cursorPosition + self scriptPointer first - 1.
	result := node.
	[result isNil or: [result children isEmpty]] whileFalse: [
		result isBlock ifTrue: [lastBlock := result].
		result := result children
			detect: [:n | n sourceInterval includes: cursor]
			ifNone: [nil]].

	result := lastBlock.
	result ifNil: [^ self].

	self scriptPointer: result sourceInterval.
	edit select: ((cursor - result start + 1) to: (cursor - result start)).
	self mapIndex: self map size.