accessing
dropColor: aColor

	dropColor = aColor ifTrue: [^ self].

	dropColor := aColor.
	
	self redrawLater.