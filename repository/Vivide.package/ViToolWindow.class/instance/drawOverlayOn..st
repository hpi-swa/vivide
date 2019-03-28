drawing
drawOverlayOn: aCanvas

	super drawOverlayOn: aCanvas.
	
	self isInWorld ifFalse: [^ self].
	
	darkenValue ifNotNil: [
		aCanvas
			fillRectangle: self bounds
			color: (self world color asColor alpha: darkenValue)].