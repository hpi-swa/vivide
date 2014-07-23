geometry
optimalWidth

	^ self isCollapsed
		ifTrue: [0]
		ifFalse: [self artifact optimalWidth min: 400 max: 250]