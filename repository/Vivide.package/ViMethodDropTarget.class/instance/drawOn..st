drawing
drawOn: aCanvas

	aCanvas
		fillRectangle: self bounds
		color: self color.

	text ifNil: [
		aCanvas
			frameRectangle: (self bounds insetBy: 5)
			width: 1
			color: (Color fromString: #AAAAAA).
		^ self].

	text
		topLeft: self topLeft + (self extent - text extent // 2);
		fullDrawOn: aCanvas.