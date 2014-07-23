geometry
optimalWidth

	^ self isCollapsed
		ifTrue: [0]
		ifFalse: [edit optimalWidth]