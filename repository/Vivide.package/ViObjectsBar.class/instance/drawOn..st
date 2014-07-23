drawing
drawOn: aCanvas

	self drawBackground ifFalse: [^ self].
	aCanvas
		fillRectangle: (self innerBounds insetBy: (0@0 corner: 1@0))
		fillStyle: self gradient.