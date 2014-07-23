geometry
optimalWidth

	^ self isCollapsed
		ifTrue: [0]
		ifFalse: [self contentTree optimalWidth min: 500 "handle long array descriptions"]