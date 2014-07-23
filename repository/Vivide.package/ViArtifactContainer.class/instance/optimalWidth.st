geometry
optimalWidth

	^ self isCollapsed
		ifTrue: [0]
		ifFalse: [self artifact width]