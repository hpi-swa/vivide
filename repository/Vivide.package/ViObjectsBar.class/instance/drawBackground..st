accessing
drawBackground: aBoolean

	drawBackground = aBoolean ifTrue: [^ self].
	drawBackground := aBoolean.
	self redrawLater.