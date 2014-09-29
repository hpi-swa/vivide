as yet unclassified
goUpToTop

	| cursor |
	self hasUnacceptedChanges ifTrue: [^ self].
	
	cursor := edit cursorPosition + self scriptPointer first - 1.
	
	self scriptPointer: nil.
	edit select: (cursor to: cursor - 1).