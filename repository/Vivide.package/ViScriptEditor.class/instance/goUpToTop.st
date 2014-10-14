actions - navigation
goUpToTop

	| cursor |
	self hasUnacceptedChanges ifTrue: [^ self].
	
	cursor := edit cursorPosition + self scriptPointer first - 1.
	
	self scriptPointer: (1 to: self script size).
	edit select: (cursor to: cursor - 1).
	self mapIndex: 1.