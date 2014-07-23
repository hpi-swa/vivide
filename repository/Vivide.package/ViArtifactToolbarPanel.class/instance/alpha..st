accessing
alpha: aFloat

	alpha := aFloat.
	
	self hasContent ifTrue: [self redrawLater].