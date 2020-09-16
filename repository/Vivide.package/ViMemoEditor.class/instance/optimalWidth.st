geometry
optimalWidth

	^ self isCollapsed
		ifTrue: [0]
		ifFalse: [self artifact optimalWidth min: 400 scaleValueToDisplay max: 250 scaleValueToDisplay]