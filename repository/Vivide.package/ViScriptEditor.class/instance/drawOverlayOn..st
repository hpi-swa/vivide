drawing
drawOverlayOn: aCanvas

	super drawOverlayOn: aCanvas.
	self drawMapOn: aCanvas.

	(self drawFlags includes: #addConnection) ifTrue: [
		aCanvas
			frameAndFillRectangle: self bounds
			fillColor: ((Color fromString: #'5E7914') alpha: 0.3)
			borderWidth: 2
			borderColor: (Color fromString: #'5E7914')].