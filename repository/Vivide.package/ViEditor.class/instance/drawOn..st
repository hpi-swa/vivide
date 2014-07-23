drawing
drawOn: aCanvas
	
	aCanvas
		fillRectangle: self bounds
		color: self color.
	
	self drawTopLineOn: aCanvas.