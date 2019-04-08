geometry
optimalWidth

	^ self isCollapsed
		ifTrue: [0]
		ifFalse: [self textField optimalWidth + self layoutInset left + self layoutInset right]