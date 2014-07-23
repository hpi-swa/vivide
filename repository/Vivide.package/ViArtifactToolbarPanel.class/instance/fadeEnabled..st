accessing
fadeEnabled: aBoolean

	aBoolean = fadeEnabled ifTrue: [^ self].
	
	fadeEnabled := aBoolean.
	self redrawLater.