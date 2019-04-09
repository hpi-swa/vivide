geometry
optimalWidth

	^ self isCollapsed
		ifTrue: [0]
		ifFalse: [self textField optimalWidth]