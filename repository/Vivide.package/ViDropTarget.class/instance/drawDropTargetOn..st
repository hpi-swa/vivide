drawing
drawDropTargetOn: aCanvas

	lastDropRectangle ifNil: [^ self].
	
	aCanvas
		frameAndFillRectangle: lastDropRectangle
		fillColor: (self dropColor alpha: 0.5)
		borderWidth: 2
		borderColor: self dropColor.