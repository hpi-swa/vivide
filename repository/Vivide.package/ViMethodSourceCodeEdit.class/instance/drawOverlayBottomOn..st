drawing
drawOverlayBottomOn: aCanvas

	| gradient |
	gradient := (GradientFillStyle ramp: {
		0.0 -> self color.
		0.3 -> (self color alpha: 0.5).
		1.0 -> (self color alpha: 0.1)})
			origin: self bottomLeft;
			direction: 0@ -30.

	aCanvas
		fillRectangle: (self bottomLeft - (0@30) corner: self bottomRight - (self verticalScrollBar width * 2 @ 0))
		fillStyle: gradient.