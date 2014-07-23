*vivide-layout
gridSpan: aPoint

	aPoint = self gridSpan ifTrue: [^ self].
	self setProperty: #gridSpan toValue: aPoint.
	self layoutChanged.