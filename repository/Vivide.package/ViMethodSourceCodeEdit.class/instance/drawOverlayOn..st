drawing
drawOverlayOn: aCanvas

	super drawOverlayOn: aCanvas.
	
	self hasKeyboard ifTrue: [^ self].
	
	self verticalScrollBar currentValue > 0
		ifTrue: [self drawOverlayTopOn: aCanvas].
		
	self verticalScrollBar currentValue < self verticalScrollBar maximum
		ifTrue: [self drawOverlayBottomOn: aCanvas].