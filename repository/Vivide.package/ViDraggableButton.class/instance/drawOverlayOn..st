as yet unclassified
drawOverlayOn: canvas

	super drawOverlayOn: canvas.
	overlayIcon ifNil: [^ self].
	canvas
		translucentImage: overlayIcon
		at: self bottomRight - overlayIcon extent.