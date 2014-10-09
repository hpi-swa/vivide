actions - navigation
goDown

	| node cursor result |
	self hasUnacceptedChanges ifTrue: [^ self].
	
	node := RBParser parseExpression: self script.
	cursor := edit cursorPosition + self scriptPointer first - 1.
	result := node.
	[(result isBlock
		"and: [result ~~ node]")
		and: [(result sourceInterval first > self scriptPointer first)
			or: [result sourceInterval last < self scriptPointer last]]]
			whileFalse: [
				result := result children
					detect: [:n | n sourceInterval includes: cursor]
					ifNone: [^ self "Cancel."]].

	self scriptPointer: result sourceInterval.
	edit select: ((cursor - result start + 1) to: (cursor - result start)).
