geometry
extent: aPoint

	(bounds extent closeTo: aPoint) ifTrue: [^ self].
	self dropShadowClear.
	super extent: aPoint.