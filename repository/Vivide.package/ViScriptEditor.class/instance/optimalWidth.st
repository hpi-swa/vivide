geometry
optimalWidth

	^ self isCollapsed
		ifTrue: [0]
		ifFalse: [edit optimalWidth + self layoutInset left + self layoutInset right]