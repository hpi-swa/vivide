drawing
drawOverlayOn: aCanvas

	super drawOverlayOn: aCanvas.
	self drawGroupLabelsOn: aCanvas.
	self drawConnectionsOn: aCanvas.