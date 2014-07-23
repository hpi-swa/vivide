toolbar - visibility
showToolbar

	self isToolbarVisible
		ifTrue: [self toolbar popUpFor: self].