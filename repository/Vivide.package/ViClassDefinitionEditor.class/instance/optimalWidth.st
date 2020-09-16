geometry
optimalWidth

	^ self isCollapsed
		ifTrue: [0]
		ifFalse: [self artifact optimalWidth min: 400 scaleValueToDisplay "handle long instVar lists"]