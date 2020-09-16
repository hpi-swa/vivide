geometry
optimalWidth

	^ self isCollapsed
		ifTrue: [0]
		ifFalse: [snippetEdit optimalWidth max: 400 scaleValueToDisplay]