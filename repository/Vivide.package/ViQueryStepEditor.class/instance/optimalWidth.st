geometry
optimalWidth

	^ self isCollapsed
		ifTrue: [0]
		ifFalse: [self ui definitionEdit optimalWidth]