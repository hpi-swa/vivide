drawing
drawOverlayOn: aCanvas

	super drawOverlayOn: aCanvas.
	self isFloating
		ifTrue: [self drawShadowOn: aCanvas].