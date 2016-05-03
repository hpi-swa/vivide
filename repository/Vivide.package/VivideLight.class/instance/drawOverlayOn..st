drawing
drawOverlayOn: aCanvas

	super drawOverlayOn: aCanvas.

	aCanvas
		line: self topRight - (1@0)
		to: self bottomRight - (1@0)
		color: self color darker.