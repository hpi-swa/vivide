as yet unclassified
cursorPosition: aPoint

	cursorPosition := aPoint.
	
	showCursorPosition ifTrue: [self redrawLater].