drawing
drawOverlayOn: aCanvas

	super drawOverlayOn: aCanvas.
	
	darkenValue ifNotNil: [
		aCanvas
			fillRectangle: self bounds
			color: (self world color asColor alpha: darkenValue)].