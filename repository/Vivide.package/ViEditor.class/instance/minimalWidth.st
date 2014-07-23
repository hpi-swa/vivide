geometry
minimalWidth
	"Editors should never be smaller than this size."
	
	^ self isFloating
		ifTrue: [10]
		ifFalse: [self header minExtent x + 10]