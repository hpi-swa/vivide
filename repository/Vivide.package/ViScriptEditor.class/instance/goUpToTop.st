actions - navigation
goUpToTop

	| cursor |
	self hasUnacceptedChanges ifTrue: [^ self].
	
	cursor := self textField cursorPosition + self scriptPointer first - 1.
	
	self scriptPointer: (1 to: self script size).
	self textField select: (cursor to: cursor - 1).
	self mapIndex: 1.