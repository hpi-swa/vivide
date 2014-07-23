geometry
outerBounds

	^ self isFloating
		ifFalse: [super outerBounds]
		ifTrue: [self bounds outsetBy: (0@0 corner: 2@2)]