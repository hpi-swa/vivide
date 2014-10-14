actions - navigation
goUp

	| node cursor result previousResult index |
	self hasUnacceptedChanges ifTrue: [^ self].
	
	node := RBParser parseExpression: self script.
	cursor := edit cursorPosition + self scriptPointer first - 1.
	result := node.
	index := 1.
	[(result isBlock
		"and: [result ~~ node]")
		and: [result sourceInterval = self scriptPointer]]
			whileFalse: [
				result isBlock ifTrue: [
					previousResult := result.
					index := index + 1].
				result := result children
					detect: [:n | n sourceInterval includes: self scriptPointer first]
					ifNone: [^ self "Bottom-most. Cancel."]].
	result := previousResult.
	result ifNil: [result := node].
	
	self scriptPointer: result sourceInterval.
	edit select: ((cursor - result start + 1) to: (cursor - result start)).
	self mapIndex: index.