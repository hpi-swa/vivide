*vivide-layout
gridCell: aPoint

	aPoint = self gridCell ifTrue: [^ self].
	self setProperty: #gridCell toValue: aPoint.
	self layoutChanged.