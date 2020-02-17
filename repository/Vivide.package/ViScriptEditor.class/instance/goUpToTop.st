actions - navigation
goUpToTop

	| cursor |
	self hasUnacceptedChanges ifTrue: [^ self].
	self isWizardActive ifTrue: [^ self].
	
	"If the cursor is at the end, move one character inside the block. See #goDown."
	cursor := ((self textField cursorPosition -1 = self visibleSourceCode size) ifTrue: [self textField cursorPosition-1] ifFalse: [self textField cursorPosition]) + self fullSourceCodeInterval first - 1.
	
	self fullSourceCodeInterval: (1 to: self fullSourceCode size).
	self setVisibleSourceCode.
	
	self textField select: (cursor to: cursor - 1).