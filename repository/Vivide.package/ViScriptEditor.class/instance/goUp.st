as yet unclassified
goUp

	| node cursor result previousResult |
	self hasUnacceptedChanges ifTrue: [^ self].
	
	node := RBParser parseExpression: self script.
	cursor := edit cursorPosition + self scriptPointer first - 1.
	result := node.
	[(result isBlock
		"and: [result ~~ node]")
		and: [result sourceInterval = self scriptPointer]]
			whileFalse: [
				result isBlock ifTrue: [previousResult := result].
				result := result children
					detect: [:n | n sourceInterval includes: self scriptPointer first]
					ifNone: [^ self "Bottom-most. Cancel."]].
	result := previousResult.
	result ifNil: [result := node].
	
	self scriptPointer: result sourceInterval.
	edit select: ((cursor - result start + 1) to: (cursor - result start)).