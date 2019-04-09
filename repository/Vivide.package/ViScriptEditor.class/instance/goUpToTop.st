actions - navigation
goUpToTop

	| cursor |
	self hasUnacceptedChanges ifTrue: [^ self].
	
	cursor := self textField cursorPosition + self fullSourceCodeInterval first - 1.
	
	self fullSourceCodeInterval: (1 to: self fullSourceCode size).
	self setVisibleSourceCode.
	
	self textField select: (cursor to: cursor - 1).